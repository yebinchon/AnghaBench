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
struct Curl_easy {int dummy; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*,char const*,size_t,char**,size_t*) ; 
 char* FUNC1 (char*) ; 
 size_t FUNC2 (char const*) ; 

CURLcode FUNC3(struct Curl_easy *data,
                                        const char *valuep, char **outptr,
                                        size_t *outlen)
{
  size_t vlen = FUNC2(valuep);

  if(!vlen) {
    /* Calculate an empty reply */
    *outptr = FUNC1("=");
    if(*outptr) {
      *outlen = (size_t) 1;
      return CURLE_OK;
    }

    *outlen = 0;
    return CURLE_OUT_OF_MEMORY;
  }

  /* Base64 encode the value */
  return FUNC0(data, valuep, vlen, outptr, outlen);
}