
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregs ;
 int printf (char*,int) ;

__attribute__((used)) static void add_job_940(int job)
{
 if (job <= 0 || job > 16) {
  printf("add_job_940: bad job: %i\n", job);
  return;
 }


 job--;
 memregs[(0x3B20+job*2)>>1] = 1;


}
