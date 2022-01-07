
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ mb_drain_maxint ;
 scalar_t__ mb_waiters ;

__attribute__((used)) static int
mbuf_drain_checks(boolean_t ignore_waiters)
{

 if (mb_drain_maxint == 0)
  return 0;
 if (!ignore_waiters && mb_waiters != 0)
  return 0;

 return 1;
}
