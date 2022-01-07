
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int * sock; } ;


 int CURL_CSELECT_ERR ;
 int CURL_CSELECT_IN ;
 int Curl_connalive (struct connectdata*) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 int SOCKET_READABLE (int ,int ) ;
 int TRUE ;

__attribute__((used)) static bool rtsp_connisdead(struct connectdata *check)
{
  int sval;
  bool ret_val = TRUE;

  sval = SOCKET_READABLE(check->sock[FIRSTSOCKET], 0);
  if(sval == 0) {

    ret_val = FALSE;
  }
  else if(sval & CURL_CSELECT_ERR) {

    ret_val = TRUE;
  }
  else if(sval & CURL_CSELECT_IN) {

    ret_val = !Curl_connalive(check);
  }

  return ret_val;
}
