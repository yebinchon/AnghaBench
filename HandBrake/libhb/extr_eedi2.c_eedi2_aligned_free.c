
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void eedi2_aligned_free( void *ptr )
{
  int * ptr2 = (int *)ptr - 1;
  ptr -= * ptr2;
  free(ptr);
}
