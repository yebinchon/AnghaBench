#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  io_close; int /*<<< orphan*/  io_open; int /*<<< orphan*/ * av_class; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  av_format_context_class ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  io_close_default ; 
 int /*<<< orphan*/  io_open_default ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s)
{
    FUNC1(s, 0, sizeof(AVFormatContext));

    s->av_class = &av_format_context_class;

    s->io_open  = io_open_default;
    s->io_close = io_close_default;

    FUNC0(s);
}