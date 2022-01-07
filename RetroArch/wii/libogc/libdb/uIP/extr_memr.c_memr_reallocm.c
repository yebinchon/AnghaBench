
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int UIP_MEMCPY (void*,void*,int ) ;
 int memr_free (void*) ;
 void* memr_malloc (int ) ;
 void* memr_realloc (void*,int ) ;

void* memr_reallocm(void *ptr,u32 newsize)
{
 void *nmem;

 nmem = memr_malloc(newsize);
 if(nmem==((void*)0)) return memr_realloc(ptr,newsize);

 UIP_MEMCPY(nmem,ptr,newsize);
 memr_free(ptr);

 return nmem;
}
