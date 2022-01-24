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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* pnd_script_base ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC2(int is_pal)
{
	static int old_pal = -1;
	char buf[128];

	if (is_pal == old_pal)
		return 0;
	old_pal = is_pal;

	FUNC1(buf, sizeof(buf), "%s/op_lcdrate.sh %d",
			pnd_script_base, is_pal ? 50 : 60);
	return FUNC0(buf);
}