
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (unsigned int) ;

__attribute__((used)) static void *patcher_host_alloc(void *user_data, unsigned int size)
{
 return malloc(size);
}
