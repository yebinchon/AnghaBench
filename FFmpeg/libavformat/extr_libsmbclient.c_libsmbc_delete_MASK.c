#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  filename; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {int fd; } ;
typedef  TYPE_2__ LIBSMBContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_WRONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(URLContext *h)
{
    LIBSMBContext *libsmbc = h->priv_data;
    int ret;
    struct stat st;

    if ((ret = FUNC3(h)) < 0)
        goto cleanup;

    if ((libsmbc->fd = FUNC6(h->filename, O_WRONLY, 0666)) < 0) {
        ret = FUNC0(errno);
        goto cleanup;
    }

    if (FUNC5(libsmbc->fd, &st) < 0) {
        ret = FUNC0(errno);
        goto cleanup;
    }

    FUNC4(libsmbc->fd);
    libsmbc->fd = -1;

    if (FUNC1(st.st_mode)) {
        if (FUNC7(h->filename) < 0) {
            ret = FUNC0(errno);
            goto cleanup;
        }
    } else {
        if (FUNC8(h->filename) < 0) {
            ret = FUNC0(errno);
            goto cleanup;
        }
    }

    ret = 0;

cleanup:
    FUNC2(h);
    return ret;
}