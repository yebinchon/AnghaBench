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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int g_menuscreen_w ; 
 int me_sfont_w ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC2(int x, int y, const char *texto, int color)
{
	char buffer[128];
	int maxw = (g_menuscreen_w - x) / me_sfont_w;

	if (maxw < 0)
		return;

	FUNC1(buffer, texto, sizeof(buffer));
	if (maxw > sizeof(buffer) - 1)
		maxw = sizeof(buffer) - 1;
	buffer[maxw] = 0;

	FUNC0(x, y, buffer, color);
}