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
typedef  int /*<<< orphan*/  uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  FCFGD_GAMEPAD 131 
#define  FCFGD_HYPERSHOT 130 
#define  FCFGD_POWERPAD 129 
#define  FCFGD_QUIZKING 128 
 int /*<<< orphan*/ ** GamePadConfig ; 
 int /*<<< orphan*/ * HyperShotButtons ; 
 int /*<<< orphan*/ * QuizKingButtons ; 
 int /*<<< orphan*/ ** powerpadsc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(int which, int arg)
{
 uint8 buf[256];
 int x;

 FUNC0();
 switch(which)
 {
  case FCFGD_QUIZKING:
   for(x=0;x<6;x++)
   {
    FUNC2(buf,"Quiz King Buzzer #%d", x+1);
    FUNC3(buf,&QuizKingButtons[x]);
   }
   break;
  case FCFGD_HYPERSHOT:
   for(x=0;x<4;x++)
   {
    FUNC2(buf,"Hyper Shot %d: %s",((x&2)>>1)+1,(x&1)?"JUMP":"RUN");
    FUNC3(buf,&HyperShotButtons[x]);
   } 
   break;
  case FCFGD_POWERPAD:
   for(x=0;x<12;x++)
   {
    FUNC2(buf,"PowerPad %d: %d", (arg&1)+1,x+11);
    FUNC3(buf,&powerpadsc[arg&1][x]);
   }
   break;

  case FCFGD_GAMEPAD:
  {
   char *str[10]={"A","B","SELECT","START","UP","DOWN","LEFT","RIGHT","Rapid A","Rapid B"};
   for(x=0;x<10;x++)
   {
    FUNC2(buf,"GamePad #%d: %s",arg+1,str[x]);
    FUNC3(buf,&GamePadConfig[arg][x]);
   }
  }
  break;
 }

 FUNC1();
}