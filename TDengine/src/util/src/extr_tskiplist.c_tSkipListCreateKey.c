
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ tSkipListKey ;
typedef scalar_t__ int32_t ;


 int tVariantCreateFromBinary (TYPE_1__*,char*,int ,int ) ;

tSkipListKey tSkipListCreateKey(int32_t type, char *val, size_t keyLength) {
  tSkipListKey k = {0};
  tVariantCreateFromBinary(&k, val, (uint32_t) keyLength, (uint32_t) type);
  return k;
}
