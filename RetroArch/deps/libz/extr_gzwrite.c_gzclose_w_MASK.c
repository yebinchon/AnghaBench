#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gz_statep ;
typedef  int /*<<< orphan*/ * gzFile ;
struct TYPE_6__ {scalar_t__ mode; int err; int /*<<< orphan*/  fd; struct TYPE_6__* path; struct TYPE_6__* in; struct TYPE_6__* out; int /*<<< orphan*/  strm; int /*<<< orphan*/  direct; scalar_t__ size; int /*<<< orphan*/  skip; scalar_t__ seek; } ;

/* Variables and functions */
 scalar_t__ GZ_WRITE ; 
 int Z_ERRNO ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC6(gzFile file)
{
    int ret = Z_OK;
    gz_statep state;

    /* get internal structure */
    if (file == NULL)
        return Z_STREAM_ERROR;
    state = (gz_statep)file;

    /* check that we're writing */
    if (state->mode != GZ_WRITE)
        return Z_STREAM_ERROR;

    /* check for seek request */
    if (state->seek) {
        state->seek = 0;
        if (FUNC5(state, state->skip) == -1)
            ret = state->err;
    }

    /* flush, free memory, and close file */
    if (FUNC3(state, Z_FINISH) == -1)
        ret = state->err;
    if (state->size) {
        if (!state->direct) {
            (void)FUNC1(&(state->strm));
            FUNC2(state->out);
        }
        FUNC2(state->in);
    }
    FUNC4(state, Z_OK, NULL);
    FUNC2(state->path);
    if (FUNC0(state->fd) == -1)
        ret = Z_ERRNO;
    FUNC2(state);
    return ret;
}