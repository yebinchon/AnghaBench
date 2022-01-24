#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gpointer ;
typedef  scalar_t__ gchar ;
struct TYPE_5__ {int /*<<< orphan*/  debugsh; } ;
typedef  TYPE_1__ YuiSh ;
typedef  int /*<<< orphan*/  GtkEntry ;

/* Variables and functions */
 int BREAK_BYTEREAD ; 
 int BREAK_BYTEWRITE ; 
 int BREAK_LONGREAD ; 
 int BREAK_LONGWRITE ; 
 int BREAK_WORDREAD ; 
 int BREAK_WORDWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*,char*,unsigned int*) ; 

__attribute__((used)) static void FUNC5(GtkEntry * entry, gpointer user_data) {
	YuiSh * sh2 = user_data;
	const gchar * address_s;
	unsigned int address;

	address_s = FUNC2(entry);

	if (*address_s == 0) return;

	FUNC4(address_s, "%8X", &address);

	FUNC0(sh2->debugsh, address, BREAK_BYTEREAD|BREAK_WORDREAD|BREAK_LONGREAD|BREAK_BYTEWRITE|BREAK_WORDWRITE|BREAK_LONGWRITE);

	FUNC3(entry, "");

	FUNC1(sh2);
}