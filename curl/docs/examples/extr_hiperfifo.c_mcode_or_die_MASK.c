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
typedef  scalar_t__ CURLMcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLM_BAD_EASY_HANDLE ; 
 int /*<<< orphan*/  CURLM_BAD_HANDLE ; 
 int /*<<< orphan*/  CURLM_BAD_SOCKET ; 
 int /*<<< orphan*/  CURLM_INTERNAL_ERROR ; 
 int /*<<< orphan*/  CURLM_LAST ; 
 scalar_t__ CURLM_OK ; 
 int /*<<< orphan*/  CURLM_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLM_UNKNOWN_OPTION ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const char *where, CURLMcode code)
{
  if(CURLM_OK != code) {
    const char *s;
    switch(code) {
      FUNC2(CURLM_BAD_HANDLE); break;
      FUNC2(CURLM_BAD_EASY_HANDLE); break;
      FUNC2(CURLM_OUT_OF_MEMORY); break;
      FUNC2(CURLM_INTERNAL_ERROR); break;
      FUNC2(CURLM_UNKNOWN_OPTION); break;
      FUNC2(CURLM_LAST); break;
      default: s = "CURLM_unknown"; break;
      FUNC2(CURLM_BAD_SOCKET);
      FUNC1(MSG_OUT, "ERROR: %s returns %s\n", where, s);
      /* ignore this error */
      return;
    }
    FUNC1(MSG_OUT, "ERROR: %s returns %s\n", where, s);
    FUNC0(code);
  }
}