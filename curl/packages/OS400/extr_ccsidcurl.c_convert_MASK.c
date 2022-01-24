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
typedef  int /*<<< orphan*/  iconv_t ;

/* Variables and functions */
 int ASCII_CCSID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(char *d, size_t dlen, int dccsid,
        const char *s, int slen, int sccsid)

{
  int i;
  iconv_t cd;
  size_t lslen;

  /**
  ***  Convert `sccsid'-coded `slen'-data bytes at `s' into `dccsid'-coded
  ***   data stored in the `dlen'-byte buffer at `d'.
  ***  If `slen' < 0, source string is null-terminated.
  ***  CCSID 65535 (no conversion) is replaced by the ASCII CCSID.
  ***  Return the converted destination byte count, or -1 if error.
  **/

  if(sccsid == 65535)
    sccsid = ASCII_CCSID;

  if(dccsid == 65535)
    dccsid = ASCII_CCSID;

  if(sccsid == dccsid) {
    lslen = slen >= 0? slen: FUNC5(s) + 1;
    i = lslen < dlen? lslen: dlen;

    if(s != d && i > 0)
      FUNC4(d, s, i);

    return i;
    }

  if(slen < 0) {
    lslen = 0;
    cd = FUNC3(dccsid, sccsid, 1);
    }
  else {
    lslen = (size_t) slen;
    cd = FUNC3(dccsid, sccsid, 0);
    }

  if(FUNC0(cd))
    return -1;

  i = dlen;

  if((int) FUNC1(cd, (char * *) &s, &lslen, &d, &dlen) < 0)
    i = -1;
  else
    i -= dlen;

  FUNC2(cd);
  return i;
}