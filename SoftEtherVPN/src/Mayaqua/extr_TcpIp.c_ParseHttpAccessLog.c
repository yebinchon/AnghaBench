
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int value ;
typedef int name ;
typedef int h ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_17__ {char* Method; char* Path; char* Protocol; char* Hostname; char* Referer; char* UserAgent; int Port; } ;
struct TYPE_14__ {TYPE_1__* TCPHeader; } ;
struct TYPE_16__ {int PayloadSize; TYPE_2__ L4; int * Payload; } ;
struct TYPE_15__ {int NumTokens; char** Token; } ;
struct TYPE_13__ {int DstPort; } ;
typedef TYPE_3__ TOKEN_LIST ;
typedef TYPE_4__ PKT ;
typedef TYPE_5__ HTTPLOG ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 TYPE_5__* Clone (TYPE_5__*,int) ;
 scalar_t__ CmpCaseIgnore (int *,char*,int) ;
 int Endian16 (int ) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int FreeToken (TYPE_3__*) ;
 int INFINITE ;
 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int * NewBuf () ;
 TYPE_3__* ParseToken (char*,char*) ;
 int SearchStr (char*,char*,int ) ;
 int SeekBuf (int *,int ,int ) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;
 int WriteBuf (int *,int *,int) ;
 int Zero (TYPE_5__*,int) ;

HTTPLOG *ParseHttpAccessLog(PKT *pkt)
{
 HTTPLOG h;
 UCHAR *buf;
 UINT size;
 BUF *b;
 char *line1;
 bool ok = 0;

 if (pkt == ((void*)0))
 {
  return ((void*)0);
 }

 buf = pkt->Payload;
 size = pkt->PayloadSize;

 if (size <= 5)
 {
  return ((void*)0);
 }


 if (CmpCaseIgnore(buf, "GET ", 4) != 0 &&
  CmpCaseIgnore(buf, "HEAD ", 5) != 0 &&
  CmpCaseIgnore(buf, "POST ", 5) != 0)
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));

 h.Port = Endian16(pkt->L4.TCPHeader->DstPort);

 b = NewBuf();
 WriteBuf(b, buf, size);
 SeekBuf(b, 0, 0);

 line1 = CfgReadNextLine(b);

 if (line1 != ((void*)0))
 {
  TOKEN_LIST *tokens = ParseToken(line1, " \t");
  if (tokens != ((void*)0))
  {
   if (tokens->NumTokens == 3)
   {
    StrCpy(h.Method, sizeof(h.Hostname), tokens->Token[0]);
    Trim(h.Method);

    StrCpy(h.Path, sizeof(h.Path), tokens->Token[1]);
    Trim(h.Path);

    StrCpy(h.Protocol, sizeof(h.Protocol), tokens->Token[2]);
    Trim(h.Protocol);

    StrUpper(h.Method);

    while (1)
    {
     char *line = CfgReadNextLine(b);
     UINT i;

     if (line == ((void*)0))
     {
      break;
     }

     i = SearchStr(line, ":", 0);
     if (i != INFINITE && i < (MAX_SIZE / 2))
     {
      char name[MAX_SIZE];
      char value[MAX_SIZE];

      StrCpy(name, sizeof(name), line);
      name[i] = 0;
      Trim(name);

      StrCpy(value, sizeof(value), line + i + 1);
      Trim(value);

      if (StrCmpi(name, "host") == 0)
      {
       StrCpy(h.Hostname, sizeof(h.Hostname), value);
      }
      else if (StrCmpi(name, "referer") == 0)
      {
       StrCpy(h.Referer, sizeof(h.Referer), value);
      }
      else if (StrCmpi(name, "user-agent") == 0)
      {
       StrCpy(h.UserAgent, sizeof(h.UserAgent), value);
      }
     }

     Free(line);
    }

    if (IsEmptyStr(h.Hostname) == 0)
    {
     ok = 1;
    }
   }
   FreeToken(tokens);
  }
 }

 Free(line1);
 FreeBuf(b);

 if (ok)
 {
  return Clone(&h, sizeof(h));
 }
 else
 {
  return ((void*)0);
 }
}
