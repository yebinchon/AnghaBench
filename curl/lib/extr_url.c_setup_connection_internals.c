
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int port; struct Curl_handler* handler; } ;
struct Curl_handler {int defport; scalar_t__ (* setup_connection ) (struct connectdata*) ;} ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ stub1 (struct connectdata*) ;

__attribute__((used)) static CURLcode setup_connection_internals(struct connectdata *conn)
{
  const struct Curl_handler * p;
  CURLcode result;


  p = conn->handler;

  if(p->setup_connection) {
    result = (*p->setup_connection)(conn);

    if(result)
      return result;

    p = conn->handler;
  }

  if(conn->port < 0)


    conn->port = p->defport;

  return CURLE_OK;
}
