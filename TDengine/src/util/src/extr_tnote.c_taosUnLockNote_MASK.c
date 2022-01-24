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

/* Variables and functions */
 int LOCK_NB ; 
 int LOCK_UN ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int taosNoteFileNum ; 

void FUNC1(int fd)
{
    if (fd < 0) return;

    if (taosNoteFileNum > 1) {
        FUNC0(fd, LOCK_UN | LOCK_NB);
    }
}