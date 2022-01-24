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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 

__attribute__((used)) static int FUNC38(int op)
{
  if ((op&0xf100)==0x0000) FUNC4(op); // Ori/And/Sub/Add/Eor/Cmp Immediate
  if ((op&0xf5bf)==0x003c) FUNC6(op); // Ori/Andi/Eori $nnnn,sr
  if ((op&0xf100)==0x0100) FUNC12(op);
  if ((op&0xf138)==0x0108) FUNC25(op);
  if ((op&0xff00)==0x0800) FUNC11(op); // Btst/Bchg/Bclr/Bset
  if ((op&0xc000)==0x0000) FUNC21(op);
  if ((op&0xf900)==0x4000) FUNC29(op); // Negx/Clr/Neg/Not
  if ((op&0xf140)==0x4100) FUNC37(op);
  if ((op&0xf1c0)==0x41c0) FUNC19(op);
  if ((op&0xf9c0)==0x40c0) FUNC22(op);
  if ((op&0xffc0)==0x4800) FUNC28(op);
  if ((op&0xfff8)==0x4840) FUNC32(op);
  if ((op&0xffc0)==0x4840) FUNC30(op);
  if ((op&0xffb8)==0x4880) FUNC17(op);
  if ((op&0xfb80)==0x4880) FUNC24(op);
  if ((op&0xff00)==0x4a00) FUNC35(op);
  if ((op&0xffc0)==0x4ac0) FUNC33(op);
  if ((op&0xfff0)==0x4e40) FUNC34(op);
  if ((op&0xfff8)==0x4e50) FUNC20(op);
  if ((op&0xfff8)==0x4e58) FUNC36(op);
  if ((op&0xfff0)==0x4e60) FUNC23(op);
  if ((op&0xfff8)==0x4e70) FUNC0(op);
  if ((op&0xff80)==0x4e80) FUNC18(op);
  if ((op&0xf000)==0x5000) FUNC2(op);
  if ((op&0xf0c0)==0x50c0) FUNC31(op);
  if ((op&0xf0f8)==0x50c8) FUNC15(op);
  if ((op&0xf000)==0x6000) FUNC10(op);
  if ((op&0xa000)==0x8000) FUNC5(op); // Or/Sub/And/Add
  if ((op&0xb1f0)==0x8100) FUNC1(op);
  if ((op&0xb130)==0x9100) FUNC3(op);
  if ((op&0xb0c0)==0x80c0) FUNC27(op);
  if ((op&0xf100)==0x7000) FUNC26(op);
  if ((op&0x90c0)==0x90c0) FUNC7(op);
  if ((op&0xf000)==0xb000) FUNC13(op);
  if ((op&0xf138)==0xb108) FUNC14(op);
  if ((op&0xf130)==0xc100) FUNC16(op);
  if ((op&0xf000)==0xe000) FUNC8(op);
  if ((op&0xf8c0)==0xe0c0) FUNC9(op);

  // Unknown opcoode
  return 0;
}