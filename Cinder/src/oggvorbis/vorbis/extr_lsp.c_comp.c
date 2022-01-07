
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int comp(const void *a,const void *b){
  return (*(float *)a<*(float *)b)-(*(float *)a>*(float *)b);
}
