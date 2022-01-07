
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* glob_buffer; scalar_t__ size; } ;
typedef TYPE_1__ URLGlob ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_URL_MALFORMAT ;
 int GLOBERROR (char*,size_t,int ) ;
 scalar_t__ GLOB_PATTERN_NUM ;
 int glob_fixed (TYPE_1__*,char*,size_t) ;
 int glob_range (TYPE_1__*,char**,size_t*,unsigned long*,int ) ;
 int glob_set (TYPE_1__*,char**,size_t*,unsigned long*,int ) ;
 int memcpy (char*,char*,size_t) ;
 int peek_ipv6 (char*,size_t*) ;

__attribute__((used)) static CURLcode glob_parse(URLGlob *glob, char *pattern,
                           size_t pos, unsigned long *amount)
{



  CURLcode res = CURLE_OK;
  int globindex = 0;

  *amount = 1;

  while(*pattern && !res) {
    char *buf = glob->glob_buffer;
    size_t sublen = 0;
    while(*pattern && *pattern != '{') {
      if(*pattern == '[') {

        size_t skip = 0;
        if(!peek_ipv6(pattern, &skip) && (pattern[1] == ']'))
          skip = 2;
        if(skip) {
          memcpy(buf, pattern, skip);
          buf += skip;
          pattern += skip;
          sublen += skip;
          continue;
        }
        break;
      }
      if(*pattern == '}' || *pattern == ']')
        return GLOBERROR("unmatched close brace/bracket", pos,
                         CURLE_URL_MALFORMAT);


      if(*pattern == '\\' &&
         (*(pattern + 1) == '{' || *(pattern + 1) == '[' ||
          *(pattern + 1) == '}' || *(pattern + 1) == ']') ) {


        ++pattern;
        ++pos;
      }
      *buf++ = *pattern++;
      ++pos;
      sublen++;
    }
    if(sublen) {

      *buf = '\0';
      res = glob_fixed(glob, glob->glob_buffer, sublen);
    }
    else {
      switch (*pattern) {
      case '\0':
        break;

      case '{':

        pattern++;
        pos++;
        res = glob_set(glob, &pattern, &pos, amount, globindex++);
        break;

      case '[':

        pattern++;
        pos++;
        res = glob_range(glob, &pattern, &pos, amount, globindex++);
        break;
      }
    }

    if(++glob->size >= GLOB_PATTERN_NUM)
      return GLOBERROR("too many globs", pos, CURLE_URL_MALFORMAT);
  }
  return res;
}
