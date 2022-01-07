
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_t ;


 int IPC_CREAT ;
 int IPC_EXCL ;
 int ftok (char*,int) ;
 int memset (void*,int ,int) ;
 int perror (char*) ;
 void* pp_counters ;
 unsigned int pprof_get_one () ;
 int printf (char*,...) ;
 void* shmat (int,int *,int ) ;
 int shmemid ;
 int shmget (int,int,int) ;

void pprof_init(void)
{
 int this_is_new_shmem = 1;
 key_t shmemkey;
 void *shmem;


 unsigned int tmp = pprof_get_one();
 printf("pprof: measured diff is %u\n", pprof_get_one() - tmp);


 shmemkey = ftok(".", 0x02ABC32E);
 if (shmemkey == -1)
 {
  perror("pprof: ftok failed");
  return;
 }


 shmemid = shmget(shmemkey, sizeof(*pp_counters),
  IPC_CREAT | IPC_EXCL | 0644);
 if (shmemid == -1)

 {
  shmemid = shmget(shmemkey, sizeof(*pp_counters),
    0644);
  if (shmemid == -1)
  {
   perror("pprof: shmget failed");
   return;
  }
  this_is_new_shmem = 0;
 }

 shmem = shmat(shmemid, ((void*)0), 0);
 if (shmem == (void *)-1)
 {
  perror("pprof: shmat failed");
  return;
 }

 pp_counters = shmem;
 if (this_is_new_shmem) {
  memset(pp_counters, 0, sizeof(*pp_counters));
  printf("pprof: pp_counters cleared.\n");
 }
}
