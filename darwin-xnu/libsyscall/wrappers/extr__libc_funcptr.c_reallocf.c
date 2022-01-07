
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* realloc (void*,size_t) ;

__attribute__((visibility("hidden")))
void *
reallocf(void *ptr, size_t size)
{
 void *nptr = realloc(ptr, size);
 if (!nptr && ptr)
  free(ptr);
 return (nptr);
}
