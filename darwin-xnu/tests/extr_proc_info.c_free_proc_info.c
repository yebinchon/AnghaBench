
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static void
free_proc_info(void ** proc_info, int num)
{
 for (int i = 0; i < num; i++) {
  free(proc_info[i]);
 }

 return;
}
