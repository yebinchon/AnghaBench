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
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TEST_ERR_MAJOR_BAD ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(char *URL)
{
  unsigned char a[] = {0x2f, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
                       0x91, 0xa2, 0xb3, 0xc4, 0xd5, 0xe6, 0xf7};
  CURLcode res = CURLE_OK;
  char *ptr = NULL;
  int asize;

  (void)URL; /* we don't use this */

  if(FUNC4(CURL_GLOBAL_ALL) != CURLE_OK) {
    FUNC5(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  ptr = FUNC6(558);
  FUNC0(ptr);

  asize = (int)sizeof(a);
  ptr = FUNC1(NULL, (char *)a, asize);
  if(ptr)
    FUNC2(ptr);

  FUNC3();

  return (int)res;
}