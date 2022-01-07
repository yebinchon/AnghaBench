
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ogg_uint32_t ;



__attribute__((used)) static int sort32a(const void *a,const void *b){
  return (**(ogg_uint32_t **)a>**(ogg_uint32_t **)b)-
    (**(ogg_uint32_t **)a<**(ogg_uint32_t **)b);
}
