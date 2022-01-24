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
struct TYPE_3__ {int /*<<< orphan*/  swr_ctx; int /*<<< orphan*/  sws_ctx; int /*<<< orphan*/  tmp_frame; int /*<<< orphan*/  frame; int /*<<< orphan*/  enc; } ;
typedef  TYPE_1__ OutputStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *oc, OutputStream *ost)
{
    FUNC1(&ost->enc);
    FUNC0(&ost->frame);
    FUNC0(&ost->tmp_frame);
    FUNC3(ost->sws_ctx);
    FUNC2(&ost->swr_ctx);
}