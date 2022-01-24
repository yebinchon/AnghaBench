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
 int ASCII_CCSID ; 
 size_t MAX_CONV_EXPANSION ; 
 int FUNC0 (char*,size_t,int,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(int dccsid, const char *s, int slen, int sccsid)

{
  char *d;
  char *cp;
  size_t dlen;
  int l;
  static const char nullbyte = 0;

  /* Like convert, but the destination is allocated and returned. */

  dlen = (size_t) (slen < 0? FUNC4(s): slen) + 1;
  dlen *= MAX_CONV_EXPANSION;           /* Allow some expansion. */
  d = FUNC2(dlen);

  if(!d)
    return (char *) NULL;

  l = FUNC0(d, dlen, dccsid, s, slen, sccsid);

  if(l < 0) {
    FUNC1(d);
    return (char *) NULL;
    }

  if(slen < 0) {
    /* Need to null-terminate even when source length is given.
       Since destination code size is unknown, use a conversion to generate
       terminator. */

    int l2 = FUNC0(d + l, dlen - l, dccsid, &nullbyte, -1, ASCII_CCSID);

    if(l2 < 0) {
      FUNC1(d);
      return (char *) NULL;
      }

    l += l2;
    }

  if((size_t) l < dlen) {
    cp = FUNC3(d, l);         /* Shorten to minimum needed. */

    if(cp)
      d = cp;
    }

  return d;
}