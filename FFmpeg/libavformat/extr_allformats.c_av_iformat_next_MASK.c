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
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ AVInputFormat ;

/* Variables and functions */
 scalar_t__ FUNC0 (void**) ; 
 int /*<<< orphan*/  av_format_init_next ; 
 int /*<<< orphan*/  av_format_next_init ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

AVInputFormat *FUNC2(const AVInputFormat *f)
{
    FUNC1(&av_format_next_init, av_format_init_next);

    if (f)
#if FF_API_AVIOFORMAT
        return f->next;
#else
        return (AVInputFormat *) f->next;
#endif
    else {
        void *opaque = NULL;
        return (AVInputFormat *)FUNC0(&opaque);
    }
}