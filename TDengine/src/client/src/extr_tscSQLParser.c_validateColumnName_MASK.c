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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {char* z; scalar_t__ n; scalar_t__ type; } ;
typedef  TYPE_1__ SSQLToken ;

/* Variables and functions */
 scalar_t__ TK_ID ; 
 scalar_t__ TK_STRING ; 
 scalar_t__ TSDB_CODE_INVALID_SQL ; 
 scalar_t__ TSDB_CODE_SUCCESS ; 
 int FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (char*,scalar_t__*) ; 

int32_t FUNC6(char* name) {
  bool ret = FUNC0(name, FUNC3(name));
  if (ret) {
    return TSDB_CODE_INVALID_SQL;
  }

  SSQLToken token = {.z = name};
  token.n = FUNC5(name, &token.type);

  if (token.type != TK_STRING && token.type != TK_ID) {
    return TSDB_CODE_INVALID_SQL;
  }

  if (token.type == TK_STRING) {
    FUNC2(token.z);
    FUNC4(token.z);
    token.n = (uint32_t)FUNC3(token.z);

    int32_t k = FUNC5(token.z, &token.type);
    if (k != token.n) {
      return TSDB_CODE_INVALID_SQL;
    }

    return FUNC6(token.z);
  } else {
    if (FUNC1(&token)) {
      return TSDB_CODE_INVALID_SQL;
    }
  }

  return TSDB_CODE_SUCCESS;
}