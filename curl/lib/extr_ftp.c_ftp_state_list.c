
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pp; } ;
struct TYPE_8__ {TYPE_3__ ftpc; } ;
struct connectdata {TYPE_4__ proto; struct Curl_easy* data; } ;
struct FTP {scalar_t__ path; } ;
struct TYPE_6__ {scalar_t__ ftp_filemethod; char** str; scalar_t__ ftp_list_only; } ;
struct TYPE_5__ {struct FTP* protop; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ Curl_pp_sendf (int *,char*,char*) ;
 scalar_t__ Curl_urldecode (struct Curl_easy*,scalar_t__,int ,char**,int *,int ) ;
 scalar_t__ FTPFILE_NOCWD ;
 int FTP_LIST ;
 size_t STRING_CUSTOMREQUEST ;
 int TRUE ;
 char* aprintf (char*,char*,char*,char*) ;
 int free (char*) ;
 int state (struct connectdata*,int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static CURLcode ftp_state_list(struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct FTP *ftp = data->req.protop;
  char *lstArg = ((void*)0);
  char *cmd;

  if((data->set.ftp_filemethod == FTPFILE_NOCWD) && ftp->path) {

    const char *slashPos = ((void*)0);
    char *rawPath = ((void*)0);
    result = Curl_urldecode(data, ftp->path, 0, &rawPath, ((void*)0), TRUE);
    if(result)
      return result;

    slashPos = strrchr(rawPath, '/');
    if(slashPos) {


      size_t n = slashPos - rawPath;
      if(n == 0)
        ++n;

      lstArg = rawPath;
      lstArg[n] = '\0';
    }
    else
      free(rawPath);
  }

  cmd = aprintf("%s%s%s",
                data->set.str[STRING_CUSTOMREQUEST]?
                data->set.str[STRING_CUSTOMREQUEST]:
                (data->set.ftp_list_only?"NLST":"LIST"),
                lstArg? " ": "",
                lstArg? lstArg: "");
  free(lstArg);

  if(!cmd)
    return CURLE_OUT_OF_MEMORY;

  result = Curl_pp_sendf(&conn->proto.ftpc.pp, "%s", cmd);
  free(cmd);

  if(result)
    return result;

  state(conn, FTP_LIST);

  return result;
}
