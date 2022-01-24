#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint8_t ;
struct TYPE_13__ {int error; } ;
struct TYPE_10__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_12__ {unsigned int* sbsplit; int sbwidth; int sbheight; int blwidth; int blheight; int num_refs; int /*<<< orphan*/ * blmotion; TYPE_2__* plane; TYPE_1__ seq; int /*<<< orphan*/  gb; } ;
struct TYPE_11__ {int xbsep; int ybsep; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ DiracContext ;
typedef  int /*<<< orphan*/  DiracBlock ;
typedef  TYPE_4__ DiracArith ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  CTX_SB_DATA ; 
 int /*<<< orphan*/  CTX_SB_F1 ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int,int,int) ; 
 unsigned int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (unsigned int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC8(DiracContext *s)
{
    GetBitContext *gb = &s->gb;
    uint8_t *sbsplit = s->sbsplit;
    int i, x, y, q, p;
    DiracArith arith[8];

    FUNC1(gb);

    /* [DIRAC_STD] 11.2.4 and 12.2.1 Number of blocks and superblocks */
    s->sbwidth  = FUNC0(s->seq.width,  4*s->plane[0].xbsep);
    s->sbheight = FUNC0(s->seq.height, 4*s->plane[0].ybsep);
    s->blwidth  = 4 * s->sbwidth;
    s->blheight = 4 * s->sbheight;

    /* [DIRAC_STD] 12.3.1 Superblock splitting modes. superblock_split_modes()
       decode superblock split modes */
    FUNC4(arith, gb, FUNC5(gb));     /* get_interleaved_ue_golomb(gb) is the length */
    for (y = 0; y < s->sbheight; y++) {
        for (x = 0; x < s->sbwidth; x++) {
            unsigned int split  = FUNC3(arith, CTX_SB_F1, CTX_SB_DATA);
            if (split > 2)
                return AVERROR_INVALIDDATA;
            sbsplit[x] = (split + FUNC6(sbsplit+x, s->sbwidth, x, y)) % 3;
        }
        sbsplit += s->sbwidth;
    }

    /* setup arith decoding */
    FUNC4(arith, gb, FUNC5(gb));
    for (i = 0; i < s->num_refs; i++) {
        FUNC4(arith + 4 + 2 * i, gb, FUNC5(gb));
        FUNC4(arith + 5 + 2 * i, gb, FUNC5(gb));
    }
    for (i = 0; i < 3; i++)
        FUNC4(arith+1+i, gb, FUNC5(gb));

    for (y = 0; y < s->sbheight; y++)
        for (x = 0; x < s->sbwidth; x++) {
            int blkcnt = 1 << s->sbsplit[y * s->sbwidth + x];
            int step   = 4 >> s->sbsplit[y * s->sbwidth + x];

            for (q = 0; q < blkcnt; q++)
                for (p = 0; p < blkcnt; p++) {
                    int bx = 4 * x + p*step;
                    int by = 4 * y + q*step;
                    DiracBlock *block = &s->blmotion[by*s->blwidth + bx];
                    FUNC2(s, arith, block, s->blwidth, bx, by);
                    FUNC7(block, s->blwidth, step);
                }
        }

    for (i = 0; i < 4 + 2*s->num_refs; i++) {
        if (arith[i].error)
            return arith[i].error;
    }

    return 0;
}