#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * canvas; int /*<<< orphan*/ * dither; int /*<<< orphan*/ * display; int /*<<< orphan*/  window_title; } ;
typedef  TYPE_1__ CACAContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    CACAContext *c = s->priv_data;

    FUNC0(&c->window_title);

    if (c->display) {
        FUNC2(c->display);
        c->display = NULL;
    }
    if (c->dither) {
        FUNC3(c->dither);
        c->dither = NULL;
    }
    if (c->canvas) {
        FUNC1(c->canvas);
        c->canvas = NULL;
    }
    return 0;
}