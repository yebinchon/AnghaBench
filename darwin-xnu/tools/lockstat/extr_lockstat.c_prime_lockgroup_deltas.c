
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lockgroup_info_t ;


 int EXIT_FAILURE ;
 void* calloc (int,int) ;
 int count ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int * lockgroup_deltas ;
 int lockgroup_info ;
 int * lockgroup_start ;
 int memcpy (int *,int ,int) ;
 int stderr ;

void
prime_lockgroup_deltas(void)
{
 lockgroup_start = calloc(count, sizeof(lockgroup_info_t));
 if (lockgroup_start == ((void*)0)) {
  fprintf(stderr, "Can't allocate memory for lockgroup info\n");
  exit (EXIT_FAILURE);
 }
 memcpy(lockgroup_start, lockgroup_info, count * sizeof(lockgroup_info_t));

 lockgroup_deltas = calloc(count, sizeof(lockgroup_info_t));
 if (lockgroup_deltas == ((void*)0)) {
  fprintf(stderr, "Can't allocate memory for lockgroup info\n");
  exit (EXIT_FAILURE);
 }
}
