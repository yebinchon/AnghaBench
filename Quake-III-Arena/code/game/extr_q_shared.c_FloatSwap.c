
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float f; int i; } ;
typedef TYPE_1__ _FloatByteUnion ;


 int LongSwap (int ) ;

float FloatSwap (const float *f) {
 const _FloatByteUnion *in;
 _FloatByteUnion out;

 in = (_FloatByteUnion *)f;
 out.i = LongSwap(in->i);

 return out.f;
}
