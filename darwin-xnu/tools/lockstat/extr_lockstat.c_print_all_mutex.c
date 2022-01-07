
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lockgroup_info_t ;


 unsigned int count ;
 int print_mutex (unsigned int,int *) ;
 int printf (char*) ;

void
print_all_mutex(lockgroup_info_t *lockgroup)
{
 unsigned int i;

 for (i = 0;i < count;i++)
  print_mutex(i, lockgroup);
        printf("\n");

}
