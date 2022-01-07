
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

__attribute__((used)) static inline void* _FAT_mem_allocate (size_t size)
{
 return malloc (size);
}
