
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* realloc (void*,unsigned int) ;

void* heapRealloc( void *userData, void* ptr, unsigned int size )
{
 return realloc( ptr, size );
}
