
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connfind {int found; struct connectdata* tofind; } ;
struct connectdata {int dummy; } ;


 int TRUE ;

__attribute__((used)) static int conn_is_conn(struct connectdata *conn, void *param)
{
  struct connfind *f = (struct connfind *)param;
  if(conn == f->tofind) {
    f->found = TRUE;
    return 1;
  }
  return 0;
}
