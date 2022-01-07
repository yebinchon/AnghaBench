
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct curl_slist {int data; struct curl_slist* next; } ;
struct connectdata {int * sock; struct Curl_easy* data; } ;
struct TELNET {struct curl_slist* telnet_vars; int subopt_xdisploc; int subopt_ttype; scalar_t__ subbuffer; } ;
struct TYPE_2__ {scalar_t__ protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef int ssize_t ;


 int CURL_IAC ;
 int CURL_NEW_ENV_VALUE ;
 int CURL_NEW_ENV_VAR ;
 int CURL_SB ;
 int CURL_SB_GET (struct TELNET*) ;
 size_t CURL_SB_LEN (struct TELNET*) ;
 int CURL_SE ;



 int CURL_TELQUAL_IS ;
 size_t FIRSTSOCKET ;
 int SOCKERRNO ;
 int failf (struct Curl_easy*,char*,int) ;
 int msnprintf (char*,int,char*,int ,char*,...) ;
 int printsub (struct Curl_easy*,char,unsigned char*,size_t) ;
 int sscanf (int ,char*,char*,char*) ;
 int strlen (int ) ;
 int swrite (int ,unsigned char*,size_t) ;

__attribute__((used)) static void suboption(struct connectdata *conn)
{
  struct curl_slist *v;
  unsigned char temp[2048];
  ssize_t bytes_written;
  size_t len;
  int err;
  char varname[128] = "";
  char varval[128] = "";
  struct Curl_easy *data = conn->data;
  struct TELNET *tn = (struct TELNET *)data->req.protop;

  printsub(data, '<', (unsigned char *)tn->subbuffer, CURL_SB_LEN(tn) + 2);
  switch(CURL_SB_GET(tn)) {
    case 129:
      len = strlen(tn->subopt_ttype) + 4 + 2;
      msnprintf((char *)temp, sizeof(temp),
                "%c%c%c%c%s%c%c", CURL_IAC, CURL_SB, 129,
                CURL_TELQUAL_IS, tn->subopt_ttype, CURL_IAC, CURL_SE);
      bytes_written = swrite(conn->sock[FIRSTSOCKET], temp, len);
      if(bytes_written < 0) {
        err = SOCKERRNO;
        failf(data,"Sending data failed (%d)",err);
      }
      printsub(data, '>', &temp[2], len-2);
      break;
    case 128:
      len = strlen(tn->subopt_xdisploc) + 4 + 2;
      msnprintf((char *)temp, sizeof(temp),
                "%c%c%c%c%s%c%c", CURL_IAC, CURL_SB, 128,
                CURL_TELQUAL_IS, tn->subopt_xdisploc, CURL_IAC, CURL_SE);
      bytes_written = swrite(conn->sock[FIRSTSOCKET], temp, len);
      if(bytes_written < 0) {
        err = SOCKERRNO;
        failf(data,"Sending data failed (%d)",err);
      }
      printsub(data, '>', &temp[2], len-2);
      break;
    case 130:
      msnprintf((char *)temp, sizeof(temp),
                "%c%c%c%c", CURL_IAC, CURL_SB, 130,
                CURL_TELQUAL_IS);
      len = 4;

      for(v = tn->telnet_vars; v; v = v->next) {
        size_t tmplen = (strlen(v->data) + 1);

        if(len + tmplen < (int)sizeof(temp)-6) {
          if(sscanf(v->data, "%127[^,],%127s", varname, varval)) {
            msnprintf((char *)&temp[len], sizeof(temp) - len,
                      "%c%s%c%s", CURL_NEW_ENV_VAR, varname,
                      CURL_NEW_ENV_VALUE, varval);
            len += tmplen;
          }
        }
      }
      msnprintf((char *)&temp[len], sizeof(temp) - len,
                "%c%c", CURL_IAC, CURL_SE);
      len += 2;
      bytes_written = swrite(conn->sock[FIRSTSOCKET], temp, len);
      if(bytes_written < 0) {
        err = SOCKERRNO;
        failf(data,"Sending data failed (%d)",err);
      }
      printsub(data, '>', &temp[2], len-2);
      break;
  }
  return;
}
