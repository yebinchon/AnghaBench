
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int SStream ;


 scalar_t__ HEX_THRESHOLD ;
 int SStream_concat (int *,char*,scalar_t__) ;

void printUInt32(SStream *O, uint32_t val)
{
 if (val > HEX_THRESHOLD)
  SStream_concat(O, "0x%x", val);
 else
  SStream_concat(O, "%u", val);
}
