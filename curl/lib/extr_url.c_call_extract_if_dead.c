
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prunedead {struct connectdata* extracted; int data; } ;
struct connectdata {int dummy; } ;


 scalar_t__ extract_if_dead (struct connectdata*,int ) ;

__attribute__((used)) static int call_extract_if_dead(struct connectdata *conn, void *param)
{
  struct prunedead *p = (struct prunedead *)param;
  if(extract_if_dead(conn, p->data)) {

    p->extracted = conn;
    return 1;
  }
  return 0;
}
