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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_USERAGENT ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int TEST_ERR_MAJOR_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  custom_calloc ; 
 int /*<<< orphan*/  custom_free ; 
 int /*<<< orphan*/  custom_malloc ; 
 int /*<<< orphan*/  custom_realloc ; 
 int /*<<< orphan*/  custom_strdup ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int FUNC8(char *URL)
{
  unsigned char a[] = {0x2f, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
                       0x91, 0xa2, 0xb3, 0xc4, 0xd5, 0xe6, 0xf7};
  CURLcode res;
  CURL *curl;
  int asize;
  char *str = NULL;

  (void)URL;

  res = FUNC5(CURL_GLOBAL_ALL,
                             custom_malloc,
                             custom_free,
                             custom_realloc,
                             custom_strdup,
                             custom_calloc);
  if(res != CURLE_OK) {
    FUNC6(stderr, "curl_global_init_mem() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = FUNC2();
  if(!curl) {
    FUNC6(stderr, "curl_easy_init() failed\n");
    FUNC4();
    return TEST_ERR_MAJOR_BAD;
  }

  FUNC7(curl, CURLOPT_USERAGENT, "test509"); /* uses strdup() */

  asize = (int)sizeof(a);
  str = FUNC1(curl, (char *)a, asize); /* uses realloc() */

test_cleanup:

  if(str)
    FUNC3(str);

  FUNC0(curl);
  FUNC4();

  return (int)res;
}