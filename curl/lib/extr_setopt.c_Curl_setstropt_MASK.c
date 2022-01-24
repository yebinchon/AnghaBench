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
 int /*<<< orphan*/  CURLE_BAD_FUNCTION_ARGUMENT ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 size_t CURL_MAX_INPUT_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 size_t FUNC3 (char*) ; 

CURLcode FUNC4(char **charp, const char *s)
{
  /* Release the previous storage at `charp' and replace by a dynamic storage
     copy of `s'. Return CURLE_OK or CURLE_OUT_OF_MEMORY. */

  FUNC0(*charp);

  if(s) {
    char *str = FUNC2(s);

    if(str) {
      size_t len = FUNC3(str);
      if(len > CURL_MAX_INPUT_LENGTH) {
        FUNC1(str);
        return CURLE_BAD_FUNCTION_ARGUMENT;
      }
    }
    if(!str)
      return CURLE_OUT_OF_MEMORY;

    *charp = str;
  }

  return CURLE_OK;
}