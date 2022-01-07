
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL ;
 int error (int ,char*) ;
 void* malloc (int) ;

void *
domalloc(int size)
{
 void *p = malloc(size);

 if (p==((void*)0))
  error(FATAL, "Out of memory from malloc");
 return p;
}
