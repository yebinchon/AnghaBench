
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * trainer_flags ;
 int * trainer_memory ;

void MONITOR_Exit(void)
{
 if (trainer_memory != ((void*)0)) {
  free(trainer_memory);
  trainer_memory=((void*)0);
  trainer_flags=((void*)0);
 }
}
