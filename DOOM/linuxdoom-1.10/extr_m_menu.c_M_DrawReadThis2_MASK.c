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

/* Variables and functions */
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
#define  commercial 131 
 int gamemode ; 
 int inhelpscreens ; 
#define  registered 130 
#define  retail 129 
#define  shareware 128 

void FUNC2(void)
{
    inhelpscreens = true;
    switch ( gamemode )
    {
      case retail:
      case commercial:
	// This hack keeps us from having to change menus.
	FUNC0 (0,0,0,FUNC1("CREDIT",PU_CACHE));
	break;
      case shareware:
      case registered:
	FUNC0 (0,0,0,FUNC1("HELP2",PU_CACHE));
	break;
      default:
	break;
    }
    return;
}