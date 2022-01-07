
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__uint32 ;
typedef int FLAC__bool ;
typedef int FLAC__BitReader ;


 int FLAC__bitreader_read_raw_uint32 (int *,int*,int) ;

FLAC__bool FLAC__bitreader_read_uint32_little_endian(FLAC__BitReader *br, FLAC__uint32 *val)
{
 FLAC__uint32 x8, x32 = 0;



 if(!FLAC__bitreader_read_raw_uint32(br, &x32, 8))
  return 0;

 if(!FLAC__bitreader_read_raw_uint32(br, &x8, 8))
  return 0;
 x32 |= (x8 << 8);

 if(!FLAC__bitreader_read_raw_uint32(br, &x8, 8))
  return 0;
 x32 |= (x8 << 16);

 if(!FLAC__bitreader_read_raw_uint32(br, &x8, 8))
  return 0;
 x32 |= (x8 << 24);

 *val = x32;
 return 1;
}
