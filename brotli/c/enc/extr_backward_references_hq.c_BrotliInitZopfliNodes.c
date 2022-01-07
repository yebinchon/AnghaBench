
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cost; } ;
struct TYPE_5__ {int length; TYPE_1__ u; scalar_t__ dcode_insert_length; scalar_t__ distance; } ;
typedef TYPE_2__ ZopfliNode ;


 int kInfinity ;

void BrotliInitZopfliNodes(ZopfliNode* array, size_t length) {
  ZopfliNode stub;
  size_t i;
  stub.length = 1;
  stub.distance = 0;
  stub.dcode_insert_length = 0;
  stub.u.cost = kInfinity;
  for (i = 0; i < length; ++i) array[i] = stub;
}
