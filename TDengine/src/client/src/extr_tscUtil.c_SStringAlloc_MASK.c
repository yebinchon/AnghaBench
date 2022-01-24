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
struct TYPE_3__ {scalar_t__ alloc; char* z; int n; } ;
typedef  TYPE_1__ SString ;
typedef  char* LPVOID ;
typedef  int /*<<< orphan*/  LPTSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 scalar_t__ TSDB_CODE_CLI_OUT_OF_MEMORY ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 char* FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

int32_t FUNC11(SString* pStr, int32_t size) {
  if (pStr->alloc >= size) {
    return TSDB_CODE_SUCCESS;
  }

  size = FUNC0(size);

  char* tmp = NULL;
  if (pStr->z != NULL) {
    tmp = FUNC7(pStr->z, size);
    FUNC6(pStr->z + pStr->n, 0, size - pStr->n);
  } else {
    tmp = FUNC5(1, size);
  }

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
    FUNC8(errno, errmsg, FUNC9(errmsg));
    FUNC10("failed to allocate memory, reason:%s", errmsg);
#endif
    return TSDB_CODE_CLI_OUT_OF_MEMORY;
  }

  pStr->z = tmp;
  pStr->alloc = size;

  return TSDB_CODE_SUCCESS;
}