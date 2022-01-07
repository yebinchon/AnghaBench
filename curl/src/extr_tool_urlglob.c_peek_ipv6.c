
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ ISALNUM (char const) ;
 int TRUE ;

__attribute__((used)) static bool peek_ipv6(const char *str, size_t *skip)
{





  size_t i = 0;
  size_t colons = 0;
  if(str[i++] != '[') {
    return FALSE;
  }
  for(;;) {
    const char c = str[i++];
    if(ISALNUM(c) || c == '.' || c == '%') {

    }
    else if(c == ':') {
      colons++;
    }
    else if(c == ']') {
      *skip = i;
      return colons >= 2 ? TRUE : FALSE;
    }
    else {
      return FALSE;
    }
  }
}
