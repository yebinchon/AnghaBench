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
typedef  int /*<<< orphan*/  a ;
typedef  int CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int,int*) ; 
 char* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char*) ; 

int FUNC11(char *URL)
{
  const unsigned char a[] = {0x2f, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
                             0x91, 0xa2, 0xb3, 0xc4, 0xd5, 0xe6, 0xf7};
  CURLcode res = CURLE_OK;
  char *ptr = NULL;
  int asize;
  int outlen = 0;
  char *raw;

  (void)URL; /* we don't use this */

  if(FUNC5(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC7(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  asize = (int)sizeof(a);
  ptr = FUNC0(NULL, (char *)a, asize);
  FUNC9("%s\n", ptr);
  FUNC3(ptr);

  /* deprecated API */
  ptr = FUNC2((char *)a, asize);
  FUNC9("%s\n", ptr);
  if(!ptr) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }

  raw = FUNC1(NULL, ptr, (int)FUNC10(ptr), &outlen);
  FUNC9("outlen == %d\n", outlen);
  FUNC9("unescape == original? %s\n",
         FUNC8(raw, a, outlen) ? "no" : "YES");
  FUNC3(raw);

  /* deprecated API */
  raw = FUNC6(ptr, (int)FUNC10(ptr));
  if(!raw) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  outlen = (int)FUNC10(raw);
  FUNC9("[old] outlen == %d\n", outlen);
  FUNC9("[old] unescape == original? %s\n",
         FUNC8(raw, a, outlen) ? "no" : "YES");
  FUNC3(raw);
  FUNC3(ptr);

  /* weird input length */
  ptr = FUNC0(NULL, (char *)a, -1);
  FUNC9("escape -1 length: %s\n", ptr);

  /* weird input length */
  outlen = 2017; /* just a value */
  ptr = FUNC1(NULL, (char *)"moahahaha", -1, &outlen);
  FUNC9("unescape -1 length: %s %d\n", ptr, outlen);

test_cleanup:
  FUNC3(ptr);
  FUNC4();

  return (int)res;
}