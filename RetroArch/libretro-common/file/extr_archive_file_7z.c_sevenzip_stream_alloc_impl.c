
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

__attribute__((used)) static void *sevenzip_stream_alloc_impl(void *p, size_t size)
{
   if (size == 0)
      return 0;
   return malloc(size);
}
