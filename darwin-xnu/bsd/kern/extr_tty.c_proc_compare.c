
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_5__ {scalar_t__ p_pid; scalar_t__ p_stat; scalar_t__ p_slptime; int p_estcpu; } ;



 int ISRUN (TYPE_1__*) ;


 scalar_t__ SZOMB ;
 int TESTAB (int,int) ;

__attribute__((used)) static int
proc_compare(proc_t p1, proc_t p2)
{


 if (p1 == ((void*)0))
  return (1);



 switch (TESTAB(ISRUN(p1), ISRUN(p2))) {
 case 129:
  return (0);
 case 128:
  return (1);
 case 130:
  return (p2->p_pid > p1->p_pid);
 }



 switch (TESTAB(p1->p_stat == SZOMB, p2->p_stat == SZOMB)) {
 case 129:
  return (1);
 case 128:
  return (0);
 case 130:
  return (p2->p_pid > p1->p_pid);
 }
 return (p2->p_pid > p1->p_pid);
}
