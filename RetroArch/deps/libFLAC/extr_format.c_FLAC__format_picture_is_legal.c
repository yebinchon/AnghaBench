
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* mime_type; scalar_t__* description; } ;
typedef scalar_t__ FLAC__byte ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__StreamMetadata_Picture ;


 unsigned int utf8len_ (scalar_t__*) ;

FLAC__bool FLAC__format_picture_is_legal(const FLAC__StreamMetadata_Picture *picture, const char **violation)
{
 char *p;
 FLAC__byte *b;

 for(p = picture->mime_type; *p; p++) {
  if(*p < 0x20 || *p > 0x7e) {
   if(violation) *violation = "MIME type string must contain only printable ASCII characters (0x20-0x7e)";
   return 0;
  }
 }

 for(b = picture->description; *b; ) {
  unsigned n = utf8len_(b);
  if(n == 0) {
   if(violation) *violation = "description string must be valid UTF-8";
   return 0;
  }
  b += n;
 }

 return 1;
}
