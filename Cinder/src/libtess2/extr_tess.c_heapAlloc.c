
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (unsigned int) ;

void* heapAlloc( void* userData, unsigned int size )
{
 return malloc( size );
}
