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
struct _reent {int _errno; } ;
struct TYPE_4__ {TYPE_1__* dev; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ sd_fat_file_state_t ;
struct TYPE_3__ {int /*<<< orphan*/  pMutex; int /*<<< orphan*/  pCmd; int /*<<< orphan*/  pClient; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (struct _reent *r, void* fd)
{
    sd_fat_file_state_t *file = (sd_fat_file_state_t *)fd;
    if(!file->dev) {
        r->_errno = ENODEV;
        return -1;
    }

    FUNC1(file->dev->pMutex);

    int result = FUNC0(file->dev->pClient, file->dev->pCmd, file->fd, -1);

    FUNC2(file->dev->pMutex);

    if(result < 0)
    {
        r->_errno = result;
        return -1;
    }
    return 0;
}