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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* InputType ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MouseData ; 
#define  SIFC_ARKANOID 142 
#define  SIFC_FKB 141 
#define  SIFC_FTRAINERA 140 
#define  SIFC_FTRAINERB 139 
#define  SIFC_HYPERSHOT 138 
#define  SIFC_MAHJONG 137 
#define  SIFC_OEKAKIDS 136 
#define  SIFC_QUIZKING 135 
#define  SIFC_SHADOW 134 
#define  SIFC_TOPRIDER 133 
#define  SI_ARKANOID 132 
#define  SI_GAMEPAD 131 
#define  SI_POWERPADA 130 
#define  SI_POWERPADB 129 
#define  SI_ZAPPER 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  cidisabled ; 
 int /*<<< orphan*/ * powerpadbuf ; 

void FUNC11(void)
{
  int x;
  int t=0;

  FUNC8();
  FUNC1();

  for(x=0;x<2;x++)
   switch(InputType[x])
   {
    case SI_GAMEPAD:t|=1;break;
    case SI_ARKANOID:t|=2;break;
    case SI_ZAPPER:t|=2;break;
    case SI_POWERPADA:
    case SI_POWERPADB:powerpadbuf[x]=FUNC7(x);break;
   }

  switch(InputType[2])
  {
   case SIFC_ARKANOID:t|=2;break;
   case SIFC_SHADOW:t|=2;break;
   case SIFC_FKB:if(cidisabled) FUNC2();break;
   case SIFC_HYPERSHOT: FUNC5();break;
   case SIFC_MAHJONG: FUNC6();break;
   case SIFC_QUIZKING: FUNC9();break;
   case SIFC_FTRAINERB:
   case SIFC_FTRAINERA: FUNC3();break;
   case SIFC_TOPRIDER: FUNC10();break;
   case SIFC_OEKAKIDS:t|=2;break;

  }

  if(t&1)
   FUNC4();

  if(t&2)
   FUNC0(MouseData);
}