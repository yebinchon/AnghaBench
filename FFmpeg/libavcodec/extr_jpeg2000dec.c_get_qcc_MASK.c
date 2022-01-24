#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int ncomponents; int /*<<< orphan*/  avctx; int /*<<< orphan*/  g; } ;
typedef  int /*<<< orphan*/  Jpeg2000QuantStyle ;
typedef  TYPE_1__ Jpeg2000DecoderContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  HAD_QCC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Jpeg2000DecoderContext *s, int n, Jpeg2000QuantStyle *q,
                   uint8_t *properties)
{
    int compno;

    if (FUNC1(&s->g) < 1)
        return AVERROR_INVALIDDATA;

    compno = FUNC2(&s->g);

    if (compno >= s->ncomponents) {
        FUNC0(s->avctx, AV_LOG_ERROR,
               "Invalid compno %d. There are %d components in the image.\n",
               compno, s->ncomponents);
        return AVERROR_INVALIDDATA;
    }

    properties[compno] |= HAD_QCC;
    return FUNC3(s, n - 1, q + compno);
}