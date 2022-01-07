
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int requiremember ;
typedef int ntlm_timeout ;
typedef int buffer ;
typedef int answer ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int Buf; } ;
typedef scalar_t__ PID ;
typedef int FILE ;
typedef TYPE_1__ BUF ;


 unsigned int B64_Encode (char*,char*,int) ;
 int CloseChildProcess (scalar_t__,int*) ;
 int Copy (int *,int ,int) ;
 char* CopyBinToStr (int *,int) ;
 int Debug (char*,...) ;
 unsigned int Decode64 (char*,char*) ;
 int EnSafeStr (char*,char) ;
 int Free (char*) ;
 int FreeBuf (TYPE_1__*) ;
 scalar_t__ OpenChildProcess (char*,char**,int*) ;
 TYPE_1__* StrToBin (char*) ;
 int Zero (char*,int) ;
 int base64_enc_len (unsigned int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fflush (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int fputs (char*,int *) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;

bool SmbAuthenticate(char* name, char* password, char* domainname, char* groupname, UINT timeout, UCHAR* challenge8, UCHAR* MsChapV2_ClientResponse, UCHAR* nt_pw_hash_hash)
{
 bool auth = 0;
 int fds[2];
 FILE* out, *in;
 PID pid;
 char buffer[255];
 char ntlm_timeout[32];
 char* proc_parameter[6];

 if (name == ((void*)0) || password == ((void*)0) || domainname == ((void*)0) || groupname == ((void*)0))
 {
  Debug("Sam.c - SmbAuthenticate - wrong password parameter\n");
  return 0;
 }

 if (password[0] == '\0' && (challenge8 == ((void*)0) || MsChapV2_ClientResponse == ((void*)0) || nt_pw_hash_hash == ((void*)0)))
 {
  Debug("Sam.c - SmbAuthenticate - wrong MsCHAPv2 parameter\n");
  return 0;
 }

 Zero(buffer, sizeof(buffer));


 EnSafeStr(domainname, '\0');

 if (strlen(domainname) > 255)
 {


  domainname[255] = '\0';
 }


 if (timeout <= 0 || timeout > 900)
 {
  timeout = 999;
 }

 snprintf(ntlm_timeout, sizeof(ntlm_timeout), "%is", timeout);
 Debug("Sam.c - timeout for ntlm_auth %s\n", ntlm_timeout);

 proc_parameter[0] = "timeout";
 proc_parameter[1] = ntlm_timeout;
 proc_parameter[2] = "ntlm_auth";
 proc_parameter[3] = "--helper-protocol=ntlm-server-1";
 proc_parameter[4] = 0;

 if (strlen(groupname) > 1)
 {

  char requiremember[352];


  EnSafeStr(groupname, '\0');

  snprintf(requiremember, sizeof(requiremember), "--require-membership-of=%s\\%s", domainname, groupname);

  proc_parameter[4] = requiremember;
  proc_parameter[5] = 0;
 }

 pid = OpenChildProcess("timeout", proc_parameter, fds);

 if (pid < 0)
 {
  Debug("Sam.c - SmbCheckLogon - error fork child process (ntlm_auth)\n");
  return 0;
 }

 out = fdopen(fds[1], "w");
 if (out == 0)
 {
  CloseChildProcess(pid, fds);

  Debug("Sam.c - cant open out pipe (ntlm_auth)\n");
  return 0;
 }

 in = fdopen(fds[0], "r");
 if (in == 0)
 {
  fclose(out);
  CloseChildProcess(pid, fds);

  Debug("Sam.c - cant open in pipe (ntlm_auth)\n");
  return 0;
 }

 if (base64_enc_len((unsigned int)strlen(name)) < sizeof(buffer)-1 &&
  base64_enc_len((unsigned int)strlen(password)) < sizeof(buffer)-1 &&
  base64_enc_len((unsigned int)strlen(domainname)) < sizeof(buffer)-1)
 {
  char answer[300];

  unsigned int end = B64_Encode(buffer, name, (int)strlen(name));
  buffer[end] = '\0';
  fputs("Username:: ", out);
  fputs(buffer, out);
  fputs("\n", out);
  Debug("Username: %s\n", buffer);
  buffer[0] = 0;

  end = B64_Encode(buffer, domainname, (int)strlen(domainname));
  buffer[end] = '\0';
  fputs("NT-Domain:: ", out);
  fputs(buffer, out);
  fputs("\n", out);
  Debug("NT-Domain: %s\n", buffer);
  buffer[0] = 0;

  if (password[0] != '\0')
  {
   Debug("Password authentication\n");
   end = B64_Encode(buffer, password, (int)strlen(password));
   buffer[end] = '\0';
   fputs("Password:: ", out);
   fputs(buffer, out);
   fputs("\n", out);
   Debug("Password: %s\n", buffer);
   buffer[0] = 0;
  }
  else
  {
   char* mschapv2_client_response;
   char* base64_challenge8;

   Debug("MsChapV2 authentication\n");
   mschapv2_client_response = CopyBinToStr(MsChapV2_ClientResponse, 24);
   end = B64_Encode(buffer, mschapv2_client_response, 48);
   buffer[end] = '\0';
   fputs("NT-Response:: ", out);
   fputs(buffer, out);
   fputs("\n", out);
   Debug("NT-Response:: %s\n", buffer);
   buffer[0] = 0;
   Free(mschapv2_client_response);

   base64_challenge8 = CopyBinToStr(challenge8, 8);
   end = B64_Encode(buffer, base64_challenge8 , 16);
   buffer[end] = '\0';
   fputs("LANMAN-Challenge:: ", out);
   fputs(buffer, out);
   fputs("\n", out);
   Debug("LANMAN-Challenge:: %s\n", buffer);
   buffer[0] = 0;
   Free(base64_challenge8);

   fputs("Request-User-Session-Key: Yes\n", out);
   }


  fputs( ".\n", out );
  fflush (out);


  Zero(answer, sizeof(answer));

  while (fgets(answer, sizeof(answer)-1, in))
  {
   char* response_parameter;

   if (strncmp(answer, ".\n", sizeof(answer)-1 ) == 0)
   {
    break;
   }


   response_parameter = strstr(answer, ":: ");
   if (!response_parameter) {
    char* newline;

    response_parameter = strstr(answer, ": ");

    if (!response_parameter) {
     continue;
    }

    response_parameter[0] ='\0';
    response_parameter++;
    response_parameter[0] ='\0';
    response_parameter++;

    newline = strstr(response_parameter, "\n");
    if( newline )
     newline[0] = '\0';
   } else {
    response_parameter[0] ='\0';
    response_parameter++;
    response_parameter[0] ='\0';
    response_parameter++;
    response_parameter[0] ='\0';
    response_parameter++;

    end = Decode64(response_parameter, response_parameter);
    response_parameter[end] = '\0';
   }

   if (strncmp(answer, "Authenticated", sizeof(answer)-1 ) == 0)
   {
    if (strcmp(response_parameter, "Yes") == 0)
    {
     Debug("Authenticated!\n");
     auth = 1;
    }
    else if (strcmp(response_parameter, "No") == 0)
    {
     Debug("Authentication failed!\n");
     auth = 0;
    }
   }
   else if (strncmp(answer, "User-Session-Key", sizeof(answer)-1 ) == 0)
   {
    if (nt_pw_hash_hash != ((void*)0))
    {
     BUF* Buf = StrToBin(response_parameter);
     Copy(nt_pw_hash_hash, Buf->Buf, 16);
     FreeBuf(Buf);
    }
   }
  }
 }

 fclose(in);
 fclose(out);

 CloseChildProcess(pid, fds);

 return auth;
}
