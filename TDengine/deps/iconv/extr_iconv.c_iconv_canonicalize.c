
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct alias {unsigned int encoding_index; } ;


 int MAX_WORD_LENGTH ;
 struct alias* aliases2_lookup (char*) ;
 struct alias* aliases_lookup (char*,int) ;
 int* all_canonical ;
 unsigned int ei_iso8859_1 ;
 unsigned int ei_local_char ;
 unsigned int ei_local_wchar_t ;
 unsigned int ei_ucs2internal ;
 unsigned int ei_ucs4internal ;
 char* locale_charset () ;
 scalar_t__ memcmp (char*,char*,int) ;
 char* stringpool ;
 char* stringpool2 ;

const char * iconv_canonicalize (const char * name)
{
  const char* code;
  char buf[MAX_WORD_LENGTH+10+1];
  const char* cp;
  char* bp;
  const struct alias * ap;
  unsigned int count;
  unsigned int index;
  const char* pool;






  for (code = name;;) {

    for (cp = code, bp = buf, count = MAX_WORD_LENGTH+10+1; ; cp++, bp++) {
      unsigned char c = * (unsigned char *) cp;
      if (c >= 0x80)
        goto invalid;
      if (c >= 'a' && c <= 'z')
        c -= 'a'-'A';
      *bp = c;
      if (c == '\0')
        break;
      if (--count == 0)
        goto invalid;
    }
    for (;;) {
      if (bp-buf >= 10 && memcmp(bp-10,"//TRANSLIT",10)==0) {
        bp -= 10;
        *bp = '\0';
        continue;
      }
      if (bp-buf >= 8 && memcmp(bp-8,"//IGNORE",8)==0) {
        bp -= 8;
        *bp = '\0';
        continue;
      }
      break;
    }
    if (buf[0] == '\0') {
      code = locale_charset();


      if (code[0] == '\0')
        goto invalid;
      continue;
    }
    pool = stringpool;
    ap = aliases_lookup(buf,bp-buf);
    if (ap == ((void*)0)) {
      pool = stringpool2;
      ap = aliases2_lookup(buf);
      if (ap == ((void*)0))
        goto invalid;
    }
    if (ap->encoding_index == ei_local_char) {
      code = locale_charset();


      if (code[0] == '\0')
        goto invalid;
      continue;
    }
    if (ap->encoding_index == ei_local_wchar_t) {
    }
    index = ap->encoding_index;
    break;
  }
  return all_canonical[index] + pool;
 invalid:
  return name;
}
