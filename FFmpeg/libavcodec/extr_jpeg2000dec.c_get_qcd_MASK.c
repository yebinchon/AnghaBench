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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {int ncomponents; } ;
typedef  int /*<<< orphan*/  Jpeg2000QuantStyle ;
typedef  TYPE_1__ Jpeg2000DecoderContext ;

/* Variables and functions */
 int HAD_QCC ; 
 int FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(Jpeg2000DecoderContext *s, int n, Jpeg2000QuantStyle *q,
                   uint8_t *properties)
{
    Jpeg2000QuantStyle tmp;
    int compno, ret;

    FUNC2(&tmp, 0, sizeof(tmp));

    if ((ret = FUNC0(s, n, &tmp)) < 0)
        return ret;
    for (compno = 0; compno < s->ncomponents; compno++)
        if (!(properties[compno] & HAD_QCC))
            FUNC1(q + compno, &tmp, sizeof(tmp));
    return 0;
}