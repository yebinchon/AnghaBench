
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ find_host_sep (char const*) ;
 int msnprintf (char*,int,char*,unsigned char const) ;
 int urlchar_needs_escaping (unsigned char const) ;

__attribute__((used)) static void strcpy_url(char *output, const char *url, bool relative)
{

  bool left = TRUE;
  const unsigned char *iptr;
  char *optr = output;
  const unsigned char *host_sep = (const unsigned char *) url;

  if(!relative)
    host_sep = (const unsigned char *) find_host_sep(url);

  for(iptr = (unsigned char *)url;
      *iptr;
      iptr++) {

    if(iptr < host_sep) {
      *optr++ = *iptr;
      continue;
    }

    switch(*iptr) {
    case '?':
      left = FALSE;

    default:
      if(urlchar_needs_escaping(*iptr)) {
        msnprintf(optr, 4, "%%%02x", *iptr);
        optr += 3;
      }
      else
        *optr++=*iptr;
      break;
    case ' ':
      if(left) {
        *optr++='%';
        *optr++='2';
        *optr++='0';
      }
      else
        *optr++='+';
      break;
    }
  }
  *optr = 0;

}
