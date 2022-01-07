
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAG_RENDERER ;
 void* Z_TagMalloc (int,int ) ;

void *CL_RefMalloc( int size ) {
 return Z_TagMalloc( size, TAG_RENDERER );
}
