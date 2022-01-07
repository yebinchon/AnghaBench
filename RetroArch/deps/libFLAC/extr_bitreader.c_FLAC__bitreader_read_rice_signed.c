
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ buffer; } ;
typedef unsigned int FLAC__uint32 ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__BitReader ;


 int FLAC__ASSERT (int) ;
 int FLAC__bitreader_read_raw_uint32 (TYPE_1__*,unsigned int*,unsigned int) ;
 int FLAC__bitreader_read_unary_unsigned (TYPE_1__*,unsigned int*) ;

FLAC__bool FLAC__bitreader_read_rice_signed(FLAC__BitReader *br, int *val, unsigned parameter)
{
 FLAC__uint32 lsbs = 0, msbs = 0;
 unsigned uval;

 FLAC__ASSERT(0 != br);
 FLAC__ASSERT(0 != br->buffer);
 FLAC__ASSERT(parameter <= 31);


 if(!FLAC__bitreader_read_unary_unsigned(br, &msbs))
  return 0;


 if(!FLAC__bitreader_read_raw_uint32(br, &lsbs, parameter))
  return 0;


 uval = (msbs << parameter) | lsbs;
 if(uval & 1)
  *val = -((int)(uval >> 1)) - 1;
 else
  *val = (int)(uval >> 1);

 return 1;
}
