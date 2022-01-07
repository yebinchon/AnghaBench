
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

void* calloc(size_t n1,size_t n2){
 return malloc(n1*n2);
}
