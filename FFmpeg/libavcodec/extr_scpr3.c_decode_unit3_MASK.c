#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_15__ {int type; int size; int* symbols; int cntsum; int /*<<< orphan*/  dectab; int /*<<< orphan*/  cnts; int /*<<< orphan*/  freqs1; scalar_t__* freqs; } ;
struct TYPE_14__ {int /*<<< orphan*/  gb; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ SCPRContext ;
typedef  int /*<<< orphan*/  RangeCoder ;
typedef  TYPE_2__ PixelModel3 ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_1__*,int,int*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(SCPRContext *s, PixelModel3 *m, uint32_t code, uint32_t *value)
{
    GetByteContext *gb = &s->gb;
    RangeCoder *rc = &s->rc;
    uint16_t a = 0, b = 0;
    uint32_t param;
    int type;

    type = m->type;
    switch (type) {
    case 0:
        *value = FUNC0(&s->gb);
        m->type = 1;
        m->size = 1;
        m->symbols[0] = *value;
        FUNC8(gb, rc);
        break;
    case 1:
        *value = FUNC0(&s->gb);
        FUNC4(m, *value);
        FUNC8(gb, rc);
        break;
    case 2:
        *value = FUNC0(&s->gb);
        FUNC5(m, *value);
        FUNC8(gb, rc);
        break;
    case 3:
        *value = FUNC0(&s->gb);
        FUNC6(m, *value);
        FUNC8(gb, rc);
        break;
    case 4:
        param = m->freqs[0] + m->freqs[1] + m->freqs[2] + m->freqs[3] + 256 - m->size;
        if (!FUNC2(m, code, value, &a, &b, &param, 4))
            FUNC9(m, *value);
        FUNC1(gb, rc, a, b);
        FUNC8(gb, rc);
        break;
    case 5:
        if (!FUNC2(m, code, value, &a, &b, &m->cntsum, 16))
            FUNC10(m, *value);
        FUNC1(gb, rc, a, b);
        FUNC8(gb, rc);
        break;
    case 6:
        if (!FUNC3(m, code, value, &a, &b)) {
            FUNC11(m);
        }
        FUNC1(gb, rc, a, b);
        FUNC8(gb, rc);
        break;
    case 7:
        return FUNC7(s, 255, &m->cntsum,
                             m->freqs, m->freqs1,
                             m->cnts, m->dectab, value);
    }

    if (*value > 255)
        return AVERROR_INVALIDDATA;

    return 0;
}