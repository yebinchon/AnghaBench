#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct representation* buffer; } ;
struct representation {struct representation* url_template; TYPE_2__* ctx; int /*<<< orphan*/  input; int /*<<< orphan*/  parent; TYPE_1__ pb; struct representation* init_sec_buf; int /*<<< orphan*/  init_section; int /*<<< orphan*/  cur_seg; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct representation**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct representation*) ; 
 int /*<<< orphan*/  FUNC5 (struct representation*) ; 

__attribute__((used)) static void FUNC6(struct representation *pls)
{
    FUNC4(pls);
    FUNC5(pls);
    FUNC3(&pls->cur_seg);
    FUNC3(&pls->init_section);
    FUNC0(&pls->init_sec_buf);
    FUNC0(&pls->pb.buffer);
    FUNC2(pls->parent, &pls->input);
    if (pls->ctx) {
        pls->ctx->pb = NULL;
        FUNC1(&pls->ctx);
    }

    FUNC0(&pls->url_template);
    FUNC0(&pls);
}