#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  g; } ;
typedef  TYPE_1__ Jpeg2000DecoderContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint8_t FUNC3(Jpeg2000DecoderContext *s, int n)
{
    uint8_t Stlm, ST, SP, tile_tlm, i;
    FUNC2(&s->g);               /* Ztlm: skipped */
    Stlm = FUNC2(&s->g);

    // too complex ? ST = ((Stlm >> 4) & 0x01) + ((Stlm >> 4) & 0x02);
    ST = (Stlm >> 4) & 0x03;
    // TODO: Manage case of ST = 0b11 --> raise error
    SP       = (Stlm >> 6) & 0x01;
    tile_tlm = (n - 4) / ((SP + 1) * 2 + ST);
    for (i = 0; i < tile_tlm; i++) {
        switch (ST) {
        case 0:
            break;
        case 1:
            FUNC2(&s->g);
            break;
        case 2:
            FUNC0(&s->g);
            break;
        case 3:
            FUNC1(&s->g);
            break;
        }
        if (SP == 0) {
            FUNC0(&s->g);
        } else {
            FUNC1(&s->g);
        }
    }
    return 0;
}