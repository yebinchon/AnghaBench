#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int setcharset_state ;

/* Variables and functions */
 int /*<<< orphan*/  CURLFNM_CHSET_SIZE ; 
 size_t CURLFNM_NEGATE ; 
#define  CURLFNM_SCHS_DEFAULT 130 
#define  CURLFNM_SCHS_RIGHTBR 129 
#define  CURLFNM_SCHS_RIGHTBRLEFTBR 128 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int SETCHARSET_FAIL ; 
 int SETCHARSET_OK ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,unsigned char*) ; 

__attribute__((used)) static int FUNC4(unsigned char **p, unsigned char *charset)
{
  setcharset_state state = CURLFNM_SCHS_DEFAULT;
  bool something_found = FALSE;
  unsigned char c;

  FUNC1(charset, 0, CURLFNM_CHSET_SIZE);
  for(;;) {
    c = **p;
    if(!c)
      return SETCHARSET_FAIL;

    switch(state) {
    case CURLFNM_SCHS_DEFAULT:
      if(c == ']') {
        if(something_found)
          return SETCHARSET_OK;
        something_found = TRUE;
        state = CURLFNM_SCHS_RIGHTBR;
        charset[c] = 1;
        (*p)++;
      }
      else if(c == '[') {
        unsigned char *pp = *p + 1;

        if(*pp++ == ':' && FUNC2(&pp, charset))
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
            charset[CURLFNM_NEGATE] = 1; /* negate charset */
        }
        else
          charset[c] = 1;
        (*p)++;
      }
      else if(c == '\\') {
        c = *(++(*p));
        if(c)
          FUNC3(p, charset);
        else
          charset['\\'] = 1;
        something_found = TRUE;
      }
      else {
        FUNC3(p, charset);
        something_found = TRUE;
      }
      break;
    case CURLFNM_SCHS_RIGHTBR:
      if(c == '[') {
        state = CURLFNM_SCHS_RIGHTBRLEFTBR;
        charset[c] = 1;
        (*p)++;
      }
      else if(c == ']') {
        return SETCHARSET_OK;
      }
      else if(FUNC0(c)) {
        charset[c] = 1;
        (*p)++;
        state = CURLFNM_SCHS_DEFAULT;
      }
      else
        /* used 'goto fail' instead of 'return SETCHARSET_FAIL' to avoid a
         * nonsense warning 'statement not reached' at end of the fnc when
         * compiling on Solaris */
        goto fail;
      break;
    case CURLFNM_SCHS_RIGHTBRLEFTBR:
      if(c == ']')
        return SETCHARSET_OK;
      state  = CURLFNM_SCHS_DEFAULT;
      charset[c] = 1;
      (*p)++;
      break;
    }
  }
fail:
  return SETCHARSET_FAIL;
}