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
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*,unsigned char**,size_t*) ; 
 size_t FUNC1 (char const*) ; 

CURLcode FUNC2(const char *chlg64, char **outptr,
                                           size_t *outlen)
{
  CURLcode result = CURLE_OK;
  size_t chlg64len = FUNC1(chlg64);

  *outptr = NULL;
  *outlen = 0;

  /* Decode the challenge if necessary */
  if(chlg64len && *chlg64 != '=')
    result = FUNC0(chlg64, (unsigned char **) outptr, outlen);

  return result;
}