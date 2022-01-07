
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
typedef int SStream ;


 scalar_t__ HEX_THRESHOLD ;
 scalar_t__ INT_MIN ;
 int SStream_concat (int *,char*,scalar_t__) ;

void printInt32Bang(SStream *O, int32_t val)
{
 if (val >= 0) {
  if (val > HEX_THRESHOLD)
   SStream_concat(O, "#0x%x", val);
  else
   SStream_concat(O, "#%u", val);
 } else {
  if (val <- HEX_THRESHOLD) {
   if (val == INT_MIN)
    SStream_concat(O, "#-0x%x", (uint32_t)val);
   else
    SStream_concat(O, "#-0x%x", (uint32_t)-val);
  }
  else
   SStream_concat(O, "#-%u", -val);
 }
}
