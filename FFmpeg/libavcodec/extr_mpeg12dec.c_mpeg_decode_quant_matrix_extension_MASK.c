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
struct TYPE_4__ {int /*<<< orphan*/  chroma_inter_matrix; int /*<<< orphan*/  gb; int /*<<< orphan*/  chroma_intra_matrix; int /*<<< orphan*/ * inter_matrix; int /*<<< orphan*/ * intra_matrix; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(MpegEncContext *s)
{
    FUNC0(s->avctx, "matrix extension\n");

    if (FUNC1(&s->gb))
        FUNC2(s, s->chroma_intra_matrix, s->intra_matrix, 1);
    if (FUNC1(&s->gb))
        FUNC2(s, s->chroma_inter_matrix, s->inter_matrix, 0);
    if (FUNC1(&s->gb))
        FUNC2(s, s->chroma_intra_matrix, NULL, 1);
    if (FUNC1(&s->gb))
        FUNC2(s, s->chroma_inter_matrix, NULL, 0);
}