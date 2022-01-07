
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {TYPE_1__* handler; } ;
struct TYPE_2__ {int (* connection_check ) (struct connectdata*,int ) ;} ;


 int CONNCHECK_KEEPALIVE ;
 int stub1 (struct connectdata*,int ) ;

__attribute__((used)) static int conn_upkeep(struct connectdata *conn,
                       void *param)
{

  (void)param;

  if(conn->handler->connection_check) {

    conn->handler->connection_check(conn, CONNCHECK_KEEPALIVE);
  }

  return 0;
}
