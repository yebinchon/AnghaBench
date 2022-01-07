
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,int) ;
 int exit (int) ;
 void* malloc (int) ;

void *
xmalloc(int size)
{
 void *mem = malloc(size);
 if (mem == ((void*)0))
 {
  error("xmalloc %d\n", size);
  exit(1);
 }
 return mem;
}
