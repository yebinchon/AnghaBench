
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FLAC__byte ;
typedef int FLAC__bool ;


 unsigned int utf8len_ (scalar_t__ const*) ;

FLAC__bool FLAC__format_vorbiscomment_entry_value_is_legal(const FLAC__byte *value, unsigned length)
{
 if(length == (unsigned)(-1)) {
  while(*value) {
   unsigned n = utf8len_(value);
   if(n == 0)
    return 0;
   value += n;
  }
 }
 else {
  const FLAC__byte *end = value + length;
  while(value < end) {
   unsigned n = utf8len_(value);
   if(n == 0)
    return 0;
   value += n;
  }
  if(value != end)
   return 0;
 }
 return 1;
}
