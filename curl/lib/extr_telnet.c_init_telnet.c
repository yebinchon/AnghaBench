
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_1__* data; } ;
struct TELNET {void** subnegotiation; void** him_preferred; void** us_preferred; int telrcv_state; } ;
struct TYPE_4__ {struct TELNET* protop; } ;
struct TYPE_3__ {TYPE_2__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURL_SB_CLEAR (struct TELNET*) ;
 size_t CURL_TELOPT_BINARY ;
 size_t CURL_TELOPT_ECHO ;
 size_t CURL_TELOPT_NAWS ;
 size_t CURL_TELOPT_SGA ;
 int CURL_TS_DATA ;
 void* CURL_YES ;
 struct TELNET* calloc (int,int) ;

__attribute__((used)) static
CURLcode init_telnet(struct connectdata *conn)
{
  struct TELNET *tn;

  tn = calloc(1, sizeof(struct TELNET));
  if(!tn)
    return CURLE_OUT_OF_MEMORY;

  conn->data->req.protop = tn;

  tn->telrcv_state = CURL_TS_DATA;


  CURL_SB_CLEAR(tn);


  tn->us_preferred[CURL_TELOPT_SGA] = CURL_YES;
  tn->him_preferred[CURL_TELOPT_SGA] = CURL_YES;






  tn->us_preferred[CURL_TELOPT_BINARY] = CURL_YES;
  tn->him_preferred[CURL_TELOPT_BINARY] = CURL_YES;







  tn->him_preferred[CURL_TELOPT_ECHO] = CURL_YES;
  tn->subnegotiation[CURL_TELOPT_NAWS] = CURL_YES;
  return CURLE_OK;
}
