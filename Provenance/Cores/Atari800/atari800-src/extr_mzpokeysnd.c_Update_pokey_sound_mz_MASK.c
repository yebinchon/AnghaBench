#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int UWORD ;
typedef  int UBYTE ;
struct TYPE_21__ {int c0diva; int forcero; int c0sw1; int c0sw2; int c0sw3; int vol0; int c0vo; int c1diva; int c1sw1; int c1sw2; int c1sw3; int vol1; int c1vo; int c2diva; int c2sw1; int c2sw2; int c2sw3; int vol2; int c2vo; int c3diva; int c3sw1; int c3sw2; int c3sw3; int vol3; int c3vo; int selpoly9; int c2t2; int c3t2; int /*<<< orphan*/  c1t2; int /*<<< orphan*/  c0t2; int /*<<< orphan*/  c3divstart; int /*<<< orphan*/  c3divpos; int /*<<< orphan*/  c2divstart; int /*<<< orphan*/  c2divpos; int /*<<< orphan*/  c2divstart_p; int /*<<< orphan*/  c3_f2; int /*<<< orphan*/  c1divstart; int /*<<< orphan*/  c1divpos; int /*<<< orphan*/  c0divstart; int /*<<< orphan*/  c0divpos; int /*<<< orphan*/  c0divstart_p; int /*<<< orphan*/  c1_f0; } ;
typedef  TYPE_1__ PokeyState ;

/* Variables and functions */
#define  POKEY_OFFSET_AUDC1 138 
#define  POKEY_OFFSET_AUDC2 137 
#define  POKEY_OFFSET_AUDC3 136 
#define  POKEY_OFFSET_AUDC4 135 
#define  POKEY_OFFSET_AUDCTL 134 
#define  POKEY_OFFSET_AUDF1 133 
#define  POKEY_OFFSET_AUDF2 132 
#define  POKEY_OFFSET_AUDF3 131 
#define  POKEY_OFFSET_AUDF4 130 
#define  POKEY_OFFSET_SKCTL 129 
#define  POKEY_OFFSET_STIMER 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 TYPE_1__* pokey_states ; 

__attribute__((used)) static void FUNC18(UWORD addr, UBYTE val, UBYTE chip, UBYTE gain)
{
    PokeyState* ps = pokey_states+chip;

    switch(addr & 0x0f)
    {
    case POKEY_OFFSET_AUDF1:
        ps->c0diva = val;
        FUNC1(ps);
        if(ps->c1_f0)
        {
            FUNC3(ps);
            FUNC4(ps);
        }
        FUNC2(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_AUDC1:
        ps->c0sw1 = (val & 0x40) != 0;
        ps->c0sw2 = (val & 0x20) != 0;
        ps->c0sw3 = (val & 0x80) != 0;
        ps->vol0 = (val & 0xF);
        ps->c0vo = (val & 0x10) != 0;
        FUNC13(ps);
        FUNC9(ps);
        FUNC2(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_AUDF2:
        ps->c1diva = val;
        FUNC3(ps);
        if(ps->c1_f0)
        {
            FUNC1(ps);
            FUNC2(ps);
        }
        FUNC4(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_AUDC2:
        ps->c1sw1 = (val & 0x40) != 0;
        ps->c1sw2 = (val & 0x20) != 0;
        ps->c1sw3 = (val & 0x80) != 0;
        ps->vol1 = (val & 0xF);
        ps->c1vo = (val & 0x10) != 0;
        FUNC14(ps);
        FUNC10(ps);
        FUNC4(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_AUDF3:
        ps->c2diva = val;
        FUNC5(ps);
        if(ps->c3_f2)
        {
            FUNC7(ps);
            FUNC8(ps);
        }
        FUNC6(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_AUDC3:
        ps->c2sw1 = (val & 0x40) != 0;
        ps->c2sw2 = (val & 0x20) != 0;
        ps->c2sw3 = (val & 0x80) != 0;
        ps->vol2 = (val & 0xF);
        ps->c2vo = (val & 0x10) != 0;
        FUNC15(ps);
        FUNC11(ps);
        FUNC6(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_AUDF4:
        ps->c3diva = val;
        FUNC7(ps);
        if(ps->c3_f2)
        {
            FUNC5(ps);
            FUNC6(ps);
        }
        FUNC8(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_AUDC4:
        ps->c3sw1 = (val & 0x40) != 0;
        ps->c3sw2 = (val & 0x20) != 0;
        ps->c3sw3 = (val & 0x80) != 0;
        ps->vol3 = val & 0xF;
        ps->c3vo = (val & 0x10) != 0;
        FUNC16(ps);
        FUNC12(ps);
        FUNC8(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_AUDCTL:
        ps->selpoly9 = (val & 0x80) != 0;
        FUNC0(ps,val);
        FUNC13(ps);
        FUNC14(ps);
        FUNC15(ps);
        FUNC16(ps);
        FUNC1(ps);
        FUNC3(ps);
        FUNC5(ps);
        FUNC7(ps);
        FUNC2(ps);
        FUNC4(ps);
        FUNC6(ps);
        FUNC8(ps);
        ps->forcero = 1;
        break;
    case POKEY_OFFSET_STIMER:
        if(ps->c1_f0)
            ps->c0divpos = ps->c0divstart_p;
        else
            ps->c0divpos = ps->c0divstart;
        ps->c1divpos = ps->c1divstart;
        if(ps->c3_f2)
            ps->c2divpos = ps->c2divstart_p;
        else
            ps->c2divpos = ps->c2divstart;

        ps->c3divpos = ps->c3divstart;
        /*Documentation is wrong about which voices are on after STIMER*/
        /*It is 3&4 which are on, tested on a real atari*/
        ps->c0t2 = 0;
        ps->c1t2 = 0;
        ps->c2t2 = 1;
        ps->c3t2 = 1;
        break;
    case POKEY_OFFSET_SKCTL:
        FUNC17(ps,val);
        break;
    }
}