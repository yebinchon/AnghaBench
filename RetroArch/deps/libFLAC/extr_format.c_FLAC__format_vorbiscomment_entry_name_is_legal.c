
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__bool ;



FLAC__bool FLAC__format_vorbiscomment_entry_name_is_legal(const char *name)
{
 char c;
 for(c = *name; c; c = *(++name))
  if(c < 0x20 || c == 0x3d || c > 0x7d)
   return 0;
 return 1;
}
