
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__uint64 ;
typedef int FLAC__uint32 ;
typedef scalar_t__ FLAC__byte ;
typedef int FLAC__bool ;
typedef int FLAC__BitReader ;


 int FLAC__U64L (int) ;
 int FLAC__bitreader_read_raw_uint32 (int *,int*,int) ;

FLAC__bool FLAC__bitreader_read_utf8_uint64(FLAC__BitReader *br, FLAC__uint64 *val, FLAC__byte *raw, unsigned *rawlen)
{
 FLAC__uint64 v = 0;
 FLAC__uint32 x;
 unsigned i;

 if(!FLAC__bitreader_read_raw_uint32(br, &x, 8))
  return 0;
 if(raw)
  raw[(*rawlen)++] = (FLAC__byte)x;
 if(!(x & 0x80)) {
  v = x;
  i = 0;
 }
 else if(x & 0xC0 && !(x & 0x20)) {
  v = x & 0x1F;
  i = 1;
 }
 else if(x & 0xE0 && !(x & 0x10)) {
  v = x & 0x0F;
  i = 2;
 }
 else if(x & 0xF0 && !(x & 0x08)) {
  v = x & 0x07;
  i = 3;
 }
 else if(x & 0xF8 && !(x & 0x04)) {
  v = x & 0x03;
  i = 4;
 }
 else if(x & 0xFC && !(x & 0x02)) {
  v = x & 0x01;
  i = 5;
 }
 else if(x & 0xFE && !(x & 0x01)) {
  v = 0;
  i = 6;
 }
 else {
  *val = FLAC__U64L(0xffffffffffffffff);
  return 1;
 }
 for( ; i; i--) {
  if(!FLAC__bitreader_read_raw_uint32(br, &x, 8))
   return 0;
  if(raw)
   raw[(*rawlen)++] = (FLAC__byte)x;
  if(!(x & 0x80) || (x & 0x40)) {
   *val = FLAC__U64L(0xffffffffffffffff);
   return 1;
  }
  v <<= 6;
  v |= (x & 0x3F);
 }
 *val = v;
 return 1;
}
