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
struct pcm {int /*<<< orphan*/ * mmap_control; int /*<<< orphan*/ * mmap_status; int /*<<< orphan*/ * sync_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pcm *pcm)
{
    if (pcm->sync_ptr)
    {
        FUNC0(pcm->sync_ptr);
        pcm->sync_ptr = NULL;
    }
    else
    {
        int page_size = FUNC2(_SC_PAGE_SIZE);
        if (pcm->mmap_status)
            FUNC1(pcm->mmap_status, page_size);
        if (pcm->mmap_control)
            FUNC1(pcm->mmap_control, page_size);
    }
    pcm->mmap_status = NULL;
    pcm->mmap_control = NULL;
}