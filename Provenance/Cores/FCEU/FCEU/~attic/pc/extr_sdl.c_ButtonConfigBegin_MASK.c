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
typedef  int /*<<< orphan*/  SDL_Surface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int SDL_INIT_VIDEO ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  bcpj ; 
 int /*<<< orphan*/  bcpv ; 

int FUNC10(void)
{
 SDL_Surface *screen;
 FUNC6(SDL_INIT_VIDEO);
 bcpv=FUNC3();
 bcpj=FUNC2();
 
 if(!(FUNC9(SDL_INIT_VIDEO)&SDL_INIT_VIDEO))
  if(FUNC5(SDL_INIT_VIDEO)==-1)
  {
   FUNC0(FUNC4());
   return(0);
  } 
 
 screen = FUNC7(300, 1, 8, 0); 
 FUNC8("Button Config",0);
 FUNC1();
 
 return(1);
}