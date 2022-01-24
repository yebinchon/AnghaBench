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
struct TYPE_3__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ YuiWindow ;
typedef  int /*<<< orphan*/  GtkTextIter ;
typedef  int /*<<< orphan*/  GtkTextBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(YuiWindow * yui, const char * message) {
	GtkTextBuffer * buffer;
	GtkTextIter iter;

	buffer = FUNC3(FUNC0(yui->log));
	FUNC1(buffer, &iter);
	FUNC2(buffer, &iter, message, -1);
}