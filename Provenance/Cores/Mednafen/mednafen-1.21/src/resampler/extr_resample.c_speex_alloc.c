
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,int) ;

__attribute__((used)) static void *speex_alloc (int size) {return calloc(size,1);}
