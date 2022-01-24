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
struct LZWState {scalar_t__ mode; scalar_t__ bs; int /*<<< orphan*/  gb; } ;
typedef  int /*<<< orphan*/  LZWState ;

/* Variables and functions */
 scalar_t__ FF_LZW_GIF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(LZWState *p)
{
    struct LZWState *s = (struct LZWState *)p;

    if(s->mode == FF_LZW_GIF) {
        while (s->bs > 0 && FUNC1(&s->gb)) {
            FUNC2(&s->gb, s->bs);
            s->bs = FUNC0(&s->gb);
        }
    }else
        FUNC2(&s->gb, FUNC1(&s->gb));
    return FUNC3(&s->gb);
}