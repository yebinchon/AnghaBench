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
typedef  scalar_t__ ssize_t ;
typedef  int off_t ;
struct TYPE_3__ {int last; int position; int remaining; scalar_t__ buf_size; int eof; scalar_t__ fh; int bytes_read; int /*<<< orphan*/  data; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  PyThreadState ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ Chunker ;

/* Variables and functions */
 int /*<<< orphan*/  POSIX_FADV_DONTNEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  PyExc_OSError ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int pagemask ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC13(Chunker *c)
{
    ssize_t n;
    off_t offset, length;
    int overshoot;
    PyObject *data;
    PyThreadState *thread_state;

    FUNC10(c->data, c->data + c->last, c->position + c->remaining - c->last);
    c->position -= c->last;
    c->last = 0;
    n = c->buf_size - c->position - c->remaining;
    if(c->eof || n == 0) {
        return 1;
    }
    if(c->fh >= 0) {
        thread_state = FUNC5();

        offset = c->bytes_read;
        // if we have a os-level file descriptor, use os-level API
        n = FUNC12(c->fh, c->data + c->position + c->remaining, n);
        if(n > 0) {
            c->remaining += n;
            c->bytes_read += n;
        }
        else
        if(n == 0) {
            c->eof = 1;
        }
        else {
            FUNC4(thread_state);
            // some error happened
            FUNC3(PyExc_OSError);
            return 0;
        }
        length = c->bytes_read - offset;
        #if ( ( _XOPEN_SOURCE >= 600 || _POSIX_C_SOURCE >= 200112L ) && defined(POSIX_FADV_DONTNEED) )

        // Only do it once per run.
        if (pagemask == 0)
            pagemask = getpagesize() - 1;

        // We tell the OS that we do not need the data that we just have read any
        // more (that it maybe has in the cache). This avoids that we spoil the
        // complete cache with data that we only read once and (due to cache
        // size limit) kick out data from the cache that might be still useful
        // for the OS or other processes.
        // We rollback the initial offset back to the start of the page,
        // to avoid it not being truncated as a partial page request.
        if (length > 0) {
            // All Linux kernels (at least up to and including 4.6(.0)) have a bug where
            // they truncate last partial page of POSIX_FADV_DONTNEED request, so we need
            // to page-align it ourselves. We'll need the rest of this page on the next
            // read (assuming this was not EOF).
            overshoot = (offset + length) & pagemask;
        } else {
            // For length == 0 we set overshoot 0, so the below
            // length - overshoot is 0, which means till end of file for
            // fadvise. This will cancel the final page and is not part
            // of the above workaround.
            overshoot = 0;
        }

        posix_fadvise(c->fh, offset & ~pagemask, length - overshoot, POSIX_FADV_DONTNEED);
        #endif

        FUNC4(thread_state);
    }
    else {
        // no os-level file descriptor, use Python file object API
        data = FUNC6(c->fd, "read", "i", n);
        if(!data) {
            return 0;
        }
        n = FUNC1(data);
        if(FUNC2()) {
            // we wanted bytes(), but got something else
            return 0;
        }
        if(n) {
            FUNC9(c->data + c->position + c->remaining, FUNC0(data), n);
            c->remaining += n;
            c->bytes_read += n;
        }
        else {
            c->eof = 1;
        }
        FUNC7(data);
    }
    return 1;
}