
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char FLAC__byte ;
typedef int FLAC__bool ;


 unsigned int utf8len_ (char const*) ;

FLAC__bool FLAC__format_vorbiscomment_entry_is_legal(const FLAC__byte *entry, unsigned length)
{
 const FLAC__byte *s, *end;

 for(s = entry, end = s + length; s < end && *s != '='; s++) {
  if(*s < 0x20 || *s > 0x7D)
   return 0;
 }
 if(s == end)
  return 0;

 s++;

 while(s < end) {
  unsigned n = utf8len_(s);
  if(n == 0)
   return 0;
  s += n;
 }
 if(s != end)
  return 0;

 return 1;
}
