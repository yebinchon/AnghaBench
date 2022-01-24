#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {int alloc; scalar_t__ n; char* z; } ;
typedef  TYPE_1__ SString ;
typedef  char* LPVOID ;
typedef  int /*<<< orphan*/  LPTSTR ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MIN_ALLOC_SIZE ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 scalar_t__ TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

int32_t FUNC9(SString* pStr, int32_t size) {
  if (pStr->alloc - pStr->n > size) {
    return TSDB_CODE_SUCCESS;
  }

  // remain space is insufficient, allocate more spaces
  int32_t inc = (size < MIN_ALLOC_SIZE) ? size : MIN_ALLOC_SIZE;
  if (inc < (pStr->alloc >> 1)) {
    inc = (pStr->alloc >> 1);
  }

  // get the new size
  int32_t newsize = pStr->alloc + inc;

  char* tmp = FUNC5(pStr->z, newsize);
  if (tmp == NULL) {
#ifdef WINDOWS
    LPVOID lpMsgBuf;
    FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS, NULL,
                  GetLastError(), MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),  // Default language
                  (LPTSTR)&lpMsgBuf, 0, NULL);
    tscTrace("failed to allocate memory, reason:%s", lpMsgBuf);
    LocalFree(lpMsgBuf);
#else
    char errmsg[256] = {0};
    FUNC6(errno, errmsg, FUNC7(errmsg));
    FUNC8("failed to allocate memory, reason:%s", errmsg);
#endif

    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }

  FUNC4(tmp + pStr->n, 0, inc);
  pStr->z = tmp;

  return TSDB_CODE_SUCCESS;
}