
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAG_BOTLIB ;
 void* Z_TagMalloc (int,int ) ;

void *BotImport_GetMemory(int size) {
 void *ptr;

 ptr = Z_TagMalloc( size, TAG_BOTLIB );
 return ptr;
}
