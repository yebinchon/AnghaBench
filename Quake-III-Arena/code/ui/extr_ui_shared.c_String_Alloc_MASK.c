#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* str; struct TYPE_4__* next; } ;
typedef  TYPE_1__ stringDef_t ;

/* Variables and functions */
 int STRING_POOL_SIZE ; 
 TYPE_1__* FUNC0 (int) ; 
 long FUNC1 (char const*) ; 
 TYPE_1__** strHandle ; 
 char const* strPool ; 
 int strPoolIndex ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int FUNC4 (char const*) ; 

const char *FUNC5(const char *p) {
	int len;
	long hash;
	stringDef_t *str, *last;
	static const char *staticNULL = "";

	if (p == NULL) {
		return NULL;
	}

	if (*p == 0) {
		return staticNULL;
	}

	hash = FUNC1(p);

	str = strHandle[hash];
	while (str) {
		if (FUNC2(p, str->str) == 0) {
			return str->str;
		}
		str = str->next;
	}

	len = FUNC4(p);
	if (len + strPoolIndex + 1 < STRING_POOL_SIZE) {
		int ph = strPoolIndex;
		FUNC3(&strPool[strPoolIndex], p);
		strPoolIndex += len + 1;

		str = strHandle[hash];
		last = str;
		while (str && str->next) {
			last = str;
			str = str->next;
		}

		str  = FUNC0(sizeof(stringDef_t));
		str->next = NULL;
		str->str = &strPool[ph];
		if (last) {
			last->next = str;
		} else {
			strHandle[hash] = str;
		}
		return &strPool[ph];
	}
	return NULL;
}