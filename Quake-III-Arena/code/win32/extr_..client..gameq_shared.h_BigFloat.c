
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FloatSwap (float const*) ;

__attribute__((used)) inline static float BigFloat(const float *l) { return FloatSwap(l); }
