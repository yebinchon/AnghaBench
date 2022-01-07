
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int setcharset_state ;


 int CURLFNM_CHSET_SIZE ;
 size_t CURLFNM_NEGATE ;



 int FALSE ;
 int ISPRINT (unsigned char) ;
 int SETCHARSET_FAIL ;
 int SETCHARSET_OK ;
 int TRUE ;
 int memset (unsigned char*,int ,int ) ;
 int parsekeyword (unsigned char**,unsigned char*) ;
 int setcharorrange (unsigned char**,unsigned char*) ;

__attribute__((used)) static int setcharset(unsigned char **p, unsigned char *charset)
{
  setcharset_state state = 130;
  bool something_found = FALSE;
  unsigned char c;

  memset(charset, 0, CURLFNM_CHSET_SIZE);
  for(;;) {
    c = **p;
    if(!c)
      return SETCHARSET_FAIL;

    switch(state) {
    case 130:
      if(c == ']') {
        if(something_found)
          return SETCHARSET_OK;
        something_found = TRUE;
        state = 129;
        charset[c] = 1;
        (*p)++;
      }
      else if(c == '[') {
        unsigned char *pp = *p + 1;

        if(*pp++ == ':' && parsekeyword(&pp, charset))
          *p = pp;
        else {
          charset[c] = 1;
          (*p)++;
        }
        something_found = TRUE;
      }
      else if(c == '^' || c == '!') {
        if(!something_found) {
          if(charset[CURLFNM_NEGATE]) {
            charset[c] = 1;
            something_found = TRUE;
          }
          else
            charset[CURLFNM_NEGATE] = 1;
        }
        else
          charset[c] = 1;
        (*p)++;
      }
      else if(c == '\\') {
        c = *(++(*p));
        if(c)
          setcharorrange(p, charset);
        else
          charset['\\'] = 1;
        something_found = TRUE;
      }
      else {
        setcharorrange(p, charset);
        something_found = TRUE;
      }
      break;
    case 129:
      if(c == '[') {
        state = 128;
        charset[c] = 1;
        (*p)++;
      }
      else if(c == ']') {
        return SETCHARSET_OK;
      }
      else if(ISPRINT(c)) {
        charset[c] = 1;
        (*p)++;
        state = 130;
      }
      else



        goto fail;
      break;
    case 128:
      if(c == ']')
        return SETCHARSET_OK;
      state = 130;
      charset[c] = 1;
      (*p)++;
      break;
    }
  }
fail:
  return SETCHARSET_FAIL;
}
