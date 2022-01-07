
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__int64 ;


 int FLAC__bitmath_ilog2_wide (int) ;

unsigned FLAC__bitmath_silog2(FLAC__int64 v)
{
 if(v == 0)
  return 0;

 if(v == -1)
  return 2;

 v = (v < 0) ? (-(v+1)) : v;
 return FLAC__bitmath_ilog2_wide(v)+2;
}
