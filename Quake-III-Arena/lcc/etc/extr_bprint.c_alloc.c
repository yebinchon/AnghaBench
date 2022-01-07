
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (void*) ;
 void* malloc (unsigned int) ;

void *alloc(unsigned n) {
 void *new = malloc(n);

 assert(new);
 return new;
}
