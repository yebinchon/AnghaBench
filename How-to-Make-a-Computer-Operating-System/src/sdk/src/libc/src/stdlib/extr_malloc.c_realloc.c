
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malloc_header {unsigned long size; } ;


 int free (void*) ;
 void* malloc (unsigned long) ;
 int memcpy (void*,void*,unsigned long) ;

void* realloc(void* ptr,size_t nsize)
{
 if (ptr==0){
  return malloc(nsize);
 }
 else if (nsize==0)
  return ptr;

 struct malloc_header *bl=ptr-sizeof(struct malloc_header);
 unsigned long size=bl->size;
 void *newptr=malloc(size+nsize);
 memcpy(newptr,ptr,size);
 free(ptr);
 return newptr;
}
