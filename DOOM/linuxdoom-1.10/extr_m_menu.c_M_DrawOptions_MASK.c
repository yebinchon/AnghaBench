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
struct TYPE_2__ {int x; int y; } ;

/* Variables and functions */
 int LINEHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ OptionsDef ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int detail ; 
 size_t detailLevel ; 
 char** detailNames ; 
 int messages ; 
 int /*<<< orphan*/  mouseSensitivity ; 
 int mousesens ; 
 char** msgNames ; 
 int /*<<< orphan*/  screenSize ; 
 int scrnsize ; 
 size_t showMessages ; 

void FUNC3(void)
{
    FUNC1 (108,15,0,FUNC2("M_OPTTTL",PU_CACHE));
	
    FUNC1 (OptionsDef.x + 175,OptionsDef.y+LINEHEIGHT*detail,0,
		       FUNC2(detailNames[detailLevel],PU_CACHE));

    FUNC1 (OptionsDef.x + 120,OptionsDef.y+LINEHEIGHT*messages,0,
		       FUNC2(msgNames[showMessages],PU_CACHE));

    FUNC0(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(mousesens+1),
		 10,mouseSensitivity);
	
    FUNC0(OptionsDef.x,OptionsDef.y+LINEHEIGHT*(scrnsize+1),
		 9,screenSize);
}