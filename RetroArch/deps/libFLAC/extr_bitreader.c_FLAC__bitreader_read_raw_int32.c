
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__uint32 ;
typedef int FLAC__int32 ;
typedef int FLAC__bool ;
typedef int FLAC__BitReader ;


 int FLAC__bitreader_read_raw_uint32 (int *,int*,unsigned int) ;

FLAC__bool FLAC__bitreader_read_raw_int32(FLAC__BitReader *br, FLAC__int32 *val, unsigned bits)
{
 FLAC__uint32 uval, mask;

 if(!FLAC__bitreader_read_raw_uint32(br, &uval, bits))
  return 0;


 mask = 1u << (bits - 1);
 *val = (uval ^ mask) - mask;
 return 1;
}
