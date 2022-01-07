
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __TSD_ERRNO ;
 void* _os_tsd_get_direct (int ) ;
 int errno ;

int *
__error(void)
{
 void *ptr = _os_tsd_get_direct(__TSD_ERRNO);
 if (ptr != ((void*)0)) {
  return (int*)ptr;
 }
 return &errno;
}
