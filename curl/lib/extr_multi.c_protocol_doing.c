
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {TYPE_1__* handler; } ;
struct TYPE_2__ {int (* doing ) (struct connectdata*,int*) ;} ;
typedef int CURLcode ;


 int CURLE_OK ;
 int FALSE ;
 int TRUE ;
 int stub1 (struct connectdata*,int*) ;

__attribute__((used)) static CURLcode protocol_doing(struct connectdata *conn, bool *done)
{
  CURLcode result = CURLE_OK;

  if(conn && conn->handler->doing) {
    *done = FALSE;
    result = conn->handler->doing(conn, done);
  }
  else
    *done = TRUE;

  return result;
}
