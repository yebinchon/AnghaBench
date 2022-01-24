#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int characterCount; TYPE_1__* characterList; } ;
struct TYPE_3__ {char const* base; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 () ; 
 TYPE_2__ uiInfo ; 

__attribute__((used)) static const char *FUNC2() {
	int i;
	const char *head = FUNC1();
	for (i = 0; i < uiInfo.characterCount; i++) {
		if (FUNC0(head, uiInfo.characterList[i].name) == 0) {
			return uiInfo.characterList[i].base;
		}
	}
	return "James";
}