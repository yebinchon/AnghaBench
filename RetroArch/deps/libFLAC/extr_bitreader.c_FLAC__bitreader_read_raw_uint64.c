
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__uint64 ;
typedef int FLAC__uint32 ;
typedef int FLAC__bool ;
typedef int FLAC__BitReader ;


 int FLAC__bitreader_read_raw_uint32 (int *,int*,unsigned int) ;

FLAC__bool FLAC__bitreader_read_raw_uint64(FLAC__BitReader *br, FLAC__uint64 *val, unsigned bits)
{
 FLAC__uint32 hi, lo;

 if(bits > 32) {
  if(!FLAC__bitreader_read_raw_uint32(br, &hi, bits-32))
   return 0;
  if(!FLAC__bitreader_read_raw_uint32(br, &lo, 32))
   return 0;
  *val = hi;
  *val <<= 32;
  *val |= lo;
 }
 else {
  if(!FLAC__bitreader_read_raw_uint32(br, &lo, bits))
   return 0;
  *val = lo;
 }
 return 1;
}
