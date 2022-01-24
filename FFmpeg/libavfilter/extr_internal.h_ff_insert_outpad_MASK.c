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
struct TYPE_3__ {int /*<<< orphan*/  outputs; int /*<<< orphan*/  output_pads; int /*<<< orphan*/  nb_outputs; } ;
typedef  int /*<<< orphan*/  AVFilterPad ;
typedef  TYPE_1__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVFilterLink ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcpad ; 

__attribute__((used)) static inline int FUNC2(AVFilterContext *f, unsigned index,
                                    AVFilterPad *p)
{
    return FUNC0(index, &f->nb_outputs, FUNC1(AVFilterLink, srcpad),
                  &f->output_pads, &f->outputs, p);
}