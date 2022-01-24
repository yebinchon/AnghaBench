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
 int /*<<< orphan*/  SDL_PHYSPAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int curbpp ; 
 scalar_t__ psdl ; 
 int /*<<< orphan*/  screen ; 
 scalar_t__ usingogl ; 

__attribute__((used)) static void FUNC3(void)
{
 #ifdef OPENGL
 if(usingogl)
  SetOpenGLPalette((uint8*)psdl);
 else
 #endif
 {
  if(curbpp>8)
   FUNC2((uint8*)psdl); 
  else
  {
   FUNC0(screen,SDL_PHYSPAL,psdl,0,256);
  }
 }
}