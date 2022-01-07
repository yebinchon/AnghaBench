
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void* lodepng_realloc(void* ptr, size_t new_size)
{
  return realloc(ptr, new_size);
}
