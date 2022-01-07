
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSPACE (char const) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;

char *Curl_copy_header_value(const char *header)
{
  const char *start;
  const char *end;
  char *value;
  size_t len;


  while(*header && (*header != ':'))
    ++header;

  if(*header)

    ++header;


  start = header;
  while(*start && ISSPACE(*start))
    start++;



  end = strchr(start, '\r');
  if(!end)
    end = strchr(start, '\n');
  if(!end)
    end = strchr(start, '\0');
  if(!end)
    return ((void*)0);


  while((end > start) && ISSPACE(*end))
    end--;


  len = end - start + 1;

  value = malloc(len + 1);
  if(!value)
    return ((void*)0);

  memcpy(value, start, len);
  value[len] = 0;

  return value;
}
