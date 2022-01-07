
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef int smtpstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_RECV_ERROR ;
 int SMTP_STOP ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode smtp_state_postdata_resp(struct connectdata *conn,
                                         int smtpcode,
                                         smtpstate instate)
{
  CURLcode result = CURLE_OK;

  (void)instate;

  if(smtpcode != 250)
    result = CURLE_RECV_ERROR;


  state(conn, SMTP_STOP);

  return result;
}
