
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int*) ;

__attribute__((used)) static void mydtor(void *p)
{
  int *ptr = (int *)p;
  free(ptr);
}
