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
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_BAD_CONTENT_ENCODING ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 size_t FUNC0 (unsigned char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (size_t) ; 
 size_t FUNC3 (char const*) ; 

CURLcode FUNC4(const char *src,
                            unsigned char **outptr, size_t *outlen)
{
  size_t srclen = 0;
  size_t length = 0;
  size_t padding = 0;
  size_t i;
  size_t numQuantums;
  size_t rawlen = 0;
  unsigned char *pos;
  unsigned char *newstr;

  *outptr = NULL;
  *outlen = 0;
  srclen = FUNC3(src);

  /* Check the length of the input string is valid */
  if(!srclen || srclen % 4)
    return CURLE_BAD_CONTENT_ENCODING;

  /* Find the position of any = padding characters */
  while((src[length] != '=') && src[length])
    length++;

  /* A maximum of two = padding characters is allowed */
  if(src[length] == '=') {
    padding++;
    if(src[length + 1] == '=')
      padding++;
  }

  /* Check the = padding characters weren't part way through the input */
  if(length + padding != srclen)
    return CURLE_BAD_CONTENT_ENCODING;

  /* Calculate the number of quantums */
  numQuantums = srclen / 4;

  /* Calculate the size of the decoded string */
  rawlen = (numQuantums * 3) - padding;

  /* Allocate our buffer including room for a zero terminator */
  newstr = FUNC2(rawlen + 1);
  if(!newstr)
    return CURLE_OUT_OF_MEMORY;

  pos = newstr;

  /* Decode the quantums */
  for(i = 0; i < numQuantums; i++) {
    size_t result = FUNC0(pos, src);
    if(!result) {
      FUNC1(newstr);

      return CURLE_BAD_CONTENT_ENCODING;
    }

    pos += result;
    src += 4;
  }

  /* Zero terminate */
  *pos = '\0';

  /* Return the decoded data */
  *outptr = newstr;
  *outlen = rawlen;

  return CURLE_OK;
}