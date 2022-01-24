#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/ * Buttons ; 
 int /*<<< orphan*/ * Buttons2 ; 
 char* InputDisplayString ; 
 TYPE_1__ PORTDATA1 ; 
 int /*<<< orphan*/ * Spaces ; 
 int /*<<< orphan*/ * Spaces2 ; 
 char* str ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2(void) {

	int x;

	FUNC1(str, "");

	for (x = 0; x < 8; x++) {

		if(PORTDATA1.data[2] & (1 << x)) {
			FUNC0(str, Spaces[x]);	
		}
		else
			FUNC0(str, Buttons[x]);

	}

	for (x = 0; x < 8; x++) {

		if(PORTDATA1.data[3] & (1 << x)) {
			FUNC0(str, Spaces2[x]);	
		}
		else
			FUNC0(str, Buttons2[x]);

	}

	FUNC1(InputDisplayString, str);
}