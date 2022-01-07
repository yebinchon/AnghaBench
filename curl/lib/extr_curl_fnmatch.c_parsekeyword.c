
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parsekey_state ;


 size_t CURLFNM_ALNUM ;
 size_t CURLFNM_ALPHA ;
 size_t CURLFNM_BLANK ;
 size_t CURLFNM_DIGIT ;
 size_t CURLFNM_GRAPH ;
 size_t CURLFNM_LOWER ;


 size_t CURLFNM_PRINT ;
 size_t CURLFNM_SPACE ;
 size_t CURLFNM_UPPER ;
 size_t CURLFNM_XDIGIT ;
 int FALSE ;
 int ISLOWER (char) ;
 int KEYLEN ;
 int SETCHARSET_FAIL ;
 int SETCHARSET_OK ;
 int TRUE ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int parsekeyword(unsigned char **pattern, unsigned char *charset)
{
  parsekey_state state = 128;

  char keyword[10] = { 0 };
  int found = FALSE;
  int i;
  unsigned char *p = *pattern;
  for(i = 0; !found; i++) {
    char c = *p++;
    if(i >= 10)
      return SETCHARSET_FAIL;
    switch(state) {
    case 128:
      if(ISLOWER(c))
        keyword[i] = c;
      else if(c == ':')
        state = 129;
      else
        return SETCHARSET_FAIL;
      break;
    case 129:
      if(c == ']')
        found = TRUE;
      else
        return SETCHARSET_FAIL;
    }
  }


  *pattern = p;
  if(strcmp(keyword, "digit") == 0)
    charset[CURLFNM_DIGIT] = 1;
  else if(strcmp(keyword, "alnum") == 0)
    charset[CURLFNM_ALNUM] = 1;
  else if(strcmp(keyword, "alpha") == 0)
    charset[CURLFNM_ALPHA] = 1;
  else if(strcmp(keyword, "xdigit") == 0)
    charset[CURLFNM_XDIGIT] = 1;
  else if(strcmp(keyword, "print") == 0)
    charset[CURLFNM_PRINT] = 1;
  else if(strcmp(keyword, "graph") == 0)
    charset[CURLFNM_GRAPH] = 1;
  else if(strcmp(keyword, "space") == 0)
    charset[CURLFNM_SPACE] = 1;
  else if(strcmp(keyword, "blank") == 0)
    charset[CURLFNM_BLANK] = 1;
  else if(strcmp(keyword, "upper") == 0)
    charset[CURLFNM_UPPER] = 1;
  else if(strcmp(keyword, "lower") == 0)
    charset[CURLFNM_LOWER] = 1;
  else
    return SETCHARSET_FAIL;
  return SETCHARSET_OK;
}
