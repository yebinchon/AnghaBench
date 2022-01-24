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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FCFGD_GAMEPAD ; 
 int /*<<< orphan*/  FCFGD_HYPERSHOT ; 
 int /*<<< orphan*/  FCFGD_POWERPAD ; 
 int /*<<< orphan*/  FCFGD_QUIZKING ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC4(char *text)
{
         if(!FUNC3(text,"gamepad",FUNC2("gamepad")))
         {
          FUNC0(FCFGD_GAMEPAD,(text[FUNC2("gamepad")]-'1')&3);
         }
         else if(!FUNC3(text,"powerpad",FUNC2("powerpad")))
         {
          FUNC0(FCFGD_POWERPAD,(text[FUNC2("powerpad")]-'1')&1);
         }
         else if(!FUNC1(text,"hypershot"))
          FUNC0(FCFGD_HYPERSHOT,0);
         else if(!FUNC1(text,"quizking"))
          FUNC0(FCFGD_QUIZKING,0);
}