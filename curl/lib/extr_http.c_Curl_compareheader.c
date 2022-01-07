
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ ISSPACE (char const) ;
 int TRUE ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecompare (char const*,char const*,size_t) ;

bool
Curl_compareheader(const char *headerline,
                   const char *header,
                   const char *content)
{





  size_t hlen = strlen(header);
  size_t clen;
  size_t len;
  const char *start;
  const char *end;

  if(!strncasecompare(headerline, header, hlen))
    return FALSE;


  start = &headerline[hlen];


  while(*start && ISSPACE(*start))
    start++;


  end = strchr(start, '\r');
  if(!end) {

    end = strchr(start, '\n');

    if(!end)

      end = strchr(start, '\0');
  }

  len = end-start;
  clen = strlen(content);


  for(; len >= clen; len--, start++) {
    if(strncasecompare(start, content, clen))
      return TRUE;
  }

  return FALSE;
}
