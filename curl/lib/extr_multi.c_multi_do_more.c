
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {TYPE_1__* handler; } ;
struct TYPE_2__ {int (* do_more ) (struct connectdata*,int*) ;} ;
typedef int CURLcode ;


 int CURLE_OK ;
 int do_complete (struct connectdata*) ;
 int stub1 (struct connectdata*,int*) ;

__attribute__((used)) static CURLcode multi_do_more(struct connectdata *conn, int *complete)
{
  CURLcode result = CURLE_OK;

  *complete = 0;

  if(conn->handler->do_more)
    result = conn->handler->do_more(conn, complete);

  if(!result && (*complete == 1))

    do_complete(conn);

  return result;
}
