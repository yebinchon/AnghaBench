
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {int * sock; struct Curl_easy* data; } ;
struct TELNET {scalar_t__ subbuffer; int subopt_wsy; int subopt_wsx; } ;
struct TYPE_2__ {scalar_t__ protop; } ;
struct Curl_easy {TYPE_1__ req; } ;
typedef int ssize_t ;


 unsigned char CURL_IAC ;
 unsigned char CURL_SB ;
 int CURL_SB_ACCUM (struct TELNET*,int const) ;
 int CURL_SB_CLEAR (struct TELNET*) ;
 int CURL_SB_LEN (struct TELNET*) ;
 int CURL_SB_TERM (struct TELNET*) ;
 unsigned char CURL_SE ;

 size_t FIRSTSOCKET ;
 int SOCKERRNO ;
 int failf (struct Curl_easy*,char*,int) ;
 unsigned short htons (int ) ;
 int printsub (struct Curl_easy*,char,unsigned char*,int ) ;
 int send_telnet_data (struct connectdata*,char*,int) ;
 int swrite (int ,scalar_t__,int) ;

__attribute__((used)) static void sendsuboption(struct connectdata *conn, int option)
{
  ssize_t bytes_written;
  int err;
  unsigned short x, y;
  unsigned char *uc1, *uc2;

  struct Curl_easy *data = conn->data;
  struct TELNET *tn = (struct TELNET *)data->req.protop;

  switch(option) {
  case 128:

    CURL_SB_CLEAR(tn);
    CURL_SB_ACCUM(tn, CURL_IAC);
    CURL_SB_ACCUM(tn, CURL_SB);
    CURL_SB_ACCUM(tn, 128);


    x = htons(tn->subopt_wsx);
    y = htons(tn->subopt_wsy);
    uc1 = (unsigned char *)&x;
    uc2 = (unsigned char *)&y;
    CURL_SB_ACCUM(tn, uc1[0]);
    CURL_SB_ACCUM(tn, uc1[1]);
    CURL_SB_ACCUM(tn, uc2[0]);
    CURL_SB_ACCUM(tn, uc2[1]);

    CURL_SB_ACCUM(tn, CURL_IAC);
    CURL_SB_ACCUM(tn, CURL_SE);
    CURL_SB_TERM(tn);


    printsub(data, '>', (unsigned char *)tn->subbuffer + 2,
             CURL_SB_LEN(tn)-2);


    bytes_written = swrite(conn->sock[FIRSTSOCKET], tn->subbuffer, 3);
    if(bytes_written < 0) {
      err = SOCKERRNO;
      failf(data, "Sending data failed (%d)", err);
    }


    send_telnet_data(conn, (char *)tn->subbuffer + 3, 4);

    bytes_written = swrite(conn->sock[FIRSTSOCKET], tn->subbuffer + 7, 2);
    if(bytes_written < 0) {
      err = SOCKERRNO;
      failf(data, "Sending data failed (%d)", err);
    }
    break;
  }
}
