
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int FARM_TASK ;
typedef int FARM_MEMBER ;


 int * SiFarmServPostTask (int *,int *) ;
 int * SiFarmServWaitTask (int *) ;

PACK *SiExecTask(FARM_MEMBER *f, PACK *p)
{
 FARM_TASK *t;

 if (f == ((void*)0) || p == ((void*)0))
 {
  return ((void*)0);
 }

 t = SiFarmServPostTask(f, p);
 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 return SiFarmServWaitTask(t);
}
