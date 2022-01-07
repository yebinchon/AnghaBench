
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MEMCPY (void*,void*,int ) ;
 int btmemr_free (void*) ;
 void* btmemr_malloc (int ) ;
 void* btmemr_realloc (void*,int ) ;

void* btmemr_reallocm(void *ptr,u32 newsize)
{
 void *nmem;

 nmem = btmemr_malloc(newsize);
 if(nmem==((void*)0)) return btmemr_realloc(ptr,newsize);

 MEMCPY(nmem,ptr,newsize);
 btmemr_free(ptr);

 return nmem;
}
