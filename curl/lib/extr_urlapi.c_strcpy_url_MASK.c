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

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const) ; 

__attribute__((used)) static void FUNC3(char *output, const char *url, bool relative)
{
  /* we must add this with whitespace-replacing */
  bool left = TRUE;
  const unsigned char *iptr;
  char *optr = output;
  const unsigned char *host_sep = (const unsigned char *) url;

  if(!relative)
    host_sep = (const unsigned char *) FUNC0(url);

  for(iptr = (unsigned char *)url;    /* read from here */
      *iptr;         /* until zero byte */
      iptr++) {

    if(iptr < host_sep) {
      *optr++ = *iptr;
      continue;
    }

    switch(*iptr) {
    case '?':
      left = FALSE;
      /* FALLTHROUGH */
    default:
      if(FUNC2(*iptr)) {
        FUNC1(optr, 4, "%%%02x", *iptr);
        optr += 3;
      }
      else
        *optr++=*iptr;
      break;
    case ' ':
      if(left) {
        *optr++='%'; /* add a '%' */
        *optr++='2'; /* add a '2' */
        *optr++='0'; /* add a '0' */
      }
      else
        *optr++='+'; /* add a '+' here */
      break;
    }
  }
  *optr = 0; /* zero terminate output buffer */

}