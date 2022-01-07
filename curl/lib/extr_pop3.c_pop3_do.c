
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int FALSE ;
 scalar_t__ pop3_parse_custom_request (struct connectdata*) ;
 scalar_t__ pop3_parse_url_path (struct connectdata*) ;
 scalar_t__ pop3_regular_transfer (struct connectdata*,int*) ;

__attribute__((used)) static CURLcode pop3_do(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;

  *done = FALSE;


  result = pop3_parse_url_path(conn);
  if(result)
    return result;


  result = pop3_parse_custom_request(conn);
  if(result)
    return result;

  result = pop3_regular_transfer(conn, done);

  return result;
}
