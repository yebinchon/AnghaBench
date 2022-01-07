
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* token_ptr ;

__attribute__((used)) static char *get_token(void)
{
 char *p = token_ptr;
 while (*p == ' ')
  p++;
 if (*p == '\0')
  return ((void*)0);
 token_ptr = p;
 do {
  token_ptr++;
  if (*token_ptr == ' ') {
   *token_ptr++ = '\0';
   break;
  }
 } while (*token_ptr != '\0');
 return p;
}
