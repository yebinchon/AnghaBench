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
struct TYPE_3__ {int /*<<< orphan*/  list_chapter; } ;
typedef  TYPE_1__ hb_job_t ;
typedef  int /*<<< orphan*/  hb_chapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2( hb_job_t * job, int chapter_index, const char * title )
{
    hb_chapter_t * chapter = FUNC1( job->list_chapter, chapter_index - 1 );
    FUNC0( chapter, title );
}