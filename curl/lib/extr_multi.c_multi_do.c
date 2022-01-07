
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int (* do_it ) (struct connectdata*,int*) ;struct connectdata* handler; } ;
struct Curl_easy {struct connectdata* conn; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int DEBUGASSERT (struct connectdata*) ;
 int do_complete (struct connectdata*) ;
 int stub1 (struct connectdata*,int*) ;

__attribute__((used)) static CURLcode multi_do(struct Curl_easy *data, bool *done)
{
  CURLcode result = CURLE_OK;
  struct connectdata *conn = data->conn;

  DEBUGASSERT(conn);
  DEBUGASSERT(conn->handler);

  if(conn->handler->do_it) {

    result = conn->handler->do_it(conn, done);

    if(!result && *done)

      do_complete(conn);
  }
  return result;
}
