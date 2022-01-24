#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_5__ {scalar_t__ name; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int type; } ;
typedef  TYPE_1__ SKeyword ;

/* Variables and functions */
 int /*<<< orphan*/  KeywordHashTable ; 
 int /*<<< orphan*/  POINTER_BYTES ; 
 int TK_ID ; 
 TYPE_2__* keywordTable ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taosHashStringStep1 ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int          FUNC7(const char* z, int n) {
  int         i;
  static char needInit = 1;
  if (needInit) {
    // Initialize the keyword hash table
    FUNC0(&mutex);

    // double check
    if (needInit) {
      int nk = FUNC3(keywordTable);

      KeywordHashTable = FUNC6(nk, POINTER_BYTES, taosHashStringStep1);
      for (i = 0; i < nk; i++) {
        keywordTable[i].len = FUNC2(keywordTable[i].name);
        void* ptr = &keywordTable[i];
        FUNC4(KeywordHashTable, (char*)keywordTable[i].name, (void*)&ptr);
      }
      needInit = 0;
    }
    FUNC1(&mutex);
  }

  char key[128] = {0};
  for (int32_t j = 0; j < n; ++j) {
    if (z[j] >= 'a' && z[j] <= 'z') {
      key[j] = (char)(z[j] & 0xDF);  // touppercase and set the null-terminated
    } else {
      key[j] = z[j];
    }
  }

  SKeyword** pKey = (SKeyword**)FUNC5(KeywordHashTable, key);
  if (pKey != NULL) {
    return (*pKey)->type;
  } else {
    return TK_ID;
  }
}