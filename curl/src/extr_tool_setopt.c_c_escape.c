
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CURL_ZERO_TERMINATED ;
 int isprint (unsigned char) ;
 char* malloc (int) ;
 int msnprintf (char*,int,char*,unsigned int) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *c_escape(const char *str, size_t len)
{
  const char *s;
  unsigned char c;
  char *escaped, *e;

  if(len == CURL_ZERO_TERMINATED)
    len = strlen(str);


  if(len > (~(size_t) 0) / 4)
    return ((void*)0);


  escaped = malloc(4 * len + 1);
  if(!escaped)
    return ((void*)0);

  e = escaped;
  for(s = str; (c = *s) != '\0'; s++) {
    if(c == '\n') {
      strcpy(e, "\\n");
      e += 2;
    }
    else if(c == '\r') {
      strcpy(e, "\\r");
      e += 2;
    }
    else if(c == '\t') {
      strcpy(e, "\\t");
      e += 2;
    }
    else if(c == '\\') {
      strcpy(e, "\\\\");
      e += 2;
    }
    else if(c == '"') {
      strcpy(e, "\\\"");
      e += 2;
    }
    else if(! isprint(c)) {
      msnprintf(e, 5, "\\%03o", (unsigned)c);
      e += 4;
    }
    else
      *e++ = c;
  }
  *e = '\0';
  return escaped;
}
