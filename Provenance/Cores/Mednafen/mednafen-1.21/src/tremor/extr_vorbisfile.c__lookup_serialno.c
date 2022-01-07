
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ogg_uint32_t ;



__attribute__((used)) static int _lookup_serialno(ogg_uint32_t s, ogg_uint32_t *serialno_list, int n){
  if(serialno_list){
    while(n--){
      if(*serialno_list == s) return 1;
      serialno_list++;
    }
  }
  return 0;
}
