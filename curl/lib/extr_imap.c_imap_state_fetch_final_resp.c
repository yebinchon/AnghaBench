
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef int imapstate ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_WEIRD_SERVER_REPLY ;
 int IMAP_RESP_OK ;
 int IMAP_STOP ;
 int state (struct connectdata*,int ) ;

__attribute__((used)) static CURLcode imap_state_fetch_final_resp(struct connectdata *conn,
                                            int imapcode,
                                            imapstate instate)
{
  CURLcode result = CURLE_OK;

  (void)instate;

  if(imapcode != IMAP_RESP_OK)
    result = CURLE_WEIRD_SERVER_REPLY;
  else

    state(conn, IMAP_STOP);

  return result;
}
