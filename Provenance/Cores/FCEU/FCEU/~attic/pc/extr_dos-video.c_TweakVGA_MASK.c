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
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/ * v256x224S ; 
 int /*<<< orphan*/ * v256x224_103 ; 
 int /*<<< orphan*/ * v256x240 ; 
 int /*<<< orphan*/ * v256x256 ; 
 int /*<<< orphan*/ * v256x256S ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(int VGAMode)
{
  int I;
  
  FUNC3();

  FUNC2(0x3C8,0x00);
  for(I=0;I<768;I++) FUNC2(0x3C9,0x00);

  FUNC2(0x3D4,0x11);
  I=FUNC1(0x3D5)&0x7F;
  FUNC2(0x3D4,0x11);
  FUNC2(0x3D5,I);

  switch(VGAMode)
  {
    case 1:  for(I=0;I<25;I++) FUNC0(v256x240[I]);break;
    case 2:  for(I=0;I<25;I++) FUNC0(v256x256[I]);break;
    case 3:  for(I=0;I<25;I++) FUNC0(v256x256S[I]);break;
    case 6:  for(I=0;I<25;I++) FUNC0(v256x224S[I]);break;
    case 8:  for(I=0;I<25;I++) FUNC0(v256x224_103[I]);break;
    default: break;
  }

  FUNC2(0x3da,0);
}