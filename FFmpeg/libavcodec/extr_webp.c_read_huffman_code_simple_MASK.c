#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ WebPContext ;
struct TYPE_6__ {int nb_symbols; int simple; void** simple_symbols; } ;
typedef  TYPE_2__ HuffReader ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(WebPContext *s, HuffReader *hc)
{
    hc->nb_symbols = FUNC1(&s->gb) + 1;

    if (FUNC1(&s->gb))
        hc->simple_symbols[0] = FUNC0(&s->gb, 8);
    else
        hc->simple_symbols[0] = FUNC1(&s->gb);

    if (hc->nb_symbols == 2)
        hc->simple_symbols[1] = FUNC0(&s->gb, 8);

    hc->simple = 1;
}