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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  void* s8 ;
typedef  int s32 ;
typedef  int s16 ;
struct TYPE_2__ {void* w; int ea; int flags; int /*<<< orphan*/  pc; } ;

/* Variables and functions */
 int DESA68_SYMBOL_FLAG ; 
#define  MODE_ABSL 139 
#define  MODE_ABSW 138 
#define  MODE_AN 137 
#define  MODE_ANp 136 
#define  MODE_DN 135 
#define  MODE_IMM 134 
#define  MODE_dAN 133 
#define  MODE_dANXI 132 
#define  MODE_dPC 131 
#define  MODE_dPCXI 130 
#define  MODE_iAN 129 
#define  MODE_pAN 128 
 int FUNC0 () ; 
 int FUNC1 () ; 
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(u32 mode, u32 reg, u8 sz)
{
  s32 v;

  if(mode==MODE_ABSW) {
    mode += reg;
  }

  switch(mode )
    {
    case MODE_DN:
      FUNC3('D0'+reg);
      break;
    case MODE_AN:
      FUNC3('A0'+reg);
      break;
    case MODE_iAN:
      FUNC3('(A0)'+(reg<<8));
      break;
    case MODE_pAN:
      FUNC4('-');
      FUNC3('(A0)'+(reg<<8));
      break;
    case MODE_ANp:
      FUNC3('(A0)'+(reg<<8));
      FUNC4('+');
      break;
    case MODE_dAN:
      FUNC14();
      FUNC7(d.w);
      FUNC3('(A0)'+(reg<<8));
      break;
    case MODE_dANXI:
      v = FUNC13();
      d.ea = (s8)(v>>8);
      FUNC7((s8)(v>>8));
      FUNC3('(A0,'+(reg<<8));
      v = (v&0xFFFF00FF)+('.'<<8);
      FUNC3(v);
      FUNC4(')');
      break;
    case MODE_ABSW:
      d.ea = v = FUNC1();
      FUNC9(v);
      FUNC3('.W');
      break;
    case MODE_ABSL:
      d.ea = v = FUNC0();
      FUNC16(v);
      FUNC2(v);
      break;
    case MODE_dPC:
      d.ea = v = FUNC15();
      FUNC16(v);
      if (d.flags & DESA68_SYMBOL_FLAG) {
	FUNC6(v);
      } else {
	FUNC9(v);
      }
      FUNC8("(PC)");
      break;
    case MODE_dPCXI:
      v = FUNC13();
      d.ea = d.pc-2+(s8)(v>>8);
      FUNC16(d.ea);
      if (d.flags & DESA68_SYMBOL_FLAG) {
	FUNC6(d.ea);
      } else {
	FUNC9(d.ea);
      }
      FUNC8("(PC,");
      v = (v&0xFFFF00FF)+('.'<<8);
      FUNC3(v);
      FUNC4(')');
      break;
    case MODE_IMM:
      switch(sz )
	{
	case 1:
	case 'B':
	  v = (s8)FUNC10();
	  FUNC5(v);
	  break;
	case 2:
	case 'W':
	  v = (s16)FUNC12();
	  FUNC5(v);
	  break;
	case 4:
	case 'L':
	  v = (u32)FUNC11();
	  FUNC5(v);
	  return;
	default:
	  FUNC8("#");
	  /*BREAKPOINT68;*/
	  break;
	}
      break;
    default:
      FUNC4('?');
      FUNC9(mode);
      FUNC4('?');
      break;
    }
}