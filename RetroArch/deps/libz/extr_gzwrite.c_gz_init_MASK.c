#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* z_streamp ;
typedef  TYPE_3__* gz_statep ;
struct TYPE_7__ {unsigned char* next; } ;
struct TYPE_8__ {unsigned char* next_out; int /*<<< orphan*/  avail_out; void* opaque; void* zfree; void* zalloc; } ;
struct TYPE_9__ {unsigned char* in; unsigned char* out; TYPE_1__ x; int /*<<< orphan*/  size; int /*<<< orphan*/  direct; int /*<<< orphan*/  want; int /*<<< orphan*/  strategy; int /*<<< orphan*/  level; TYPE_2__ strm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_MEM_LEVEL ; 
 scalar_t__ MAX_WBITS ; 
 int /*<<< orphan*/  Z_DEFLATED ; 
 int /*<<< orphan*/  Z_MEM_ERROR ; 
 void* Z_NULL ; 
 int Z_OK ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(gz_statep state)
{
    int ret;
    z_streamp strm = &(state->strm);

    /* allocate input buffer */
    state->in = (unsigned char *)FUNC3(state->want);
    if (state->in == NULL) {
        FUNC2(state, Z_MEM_ERROR, "out of memory");
        return -1;
    }

    /* only need output buffer and deflate state if compressing */
    if (!state->direct) {
        /* allocate output buffer */
        state->out = (unsigned char *)FUNC3(state->want);
        if (state->out == NULL) {
            FUNC1(state->in);
            FUNC2(state, Z_MEM_ERROR, "out of memory");
            return -1;
        }

        /* allocate deflate memory, set up for gzip compression */
        strm->zalloc = Z_NULL;
        strm->zfree = Z_NULL;
        strm->opaque = Z_NULL;
        ret = FUNC0(strm, state->level, Z_DEFLATED,
                           MAX_WBITS + 16, DEF_MEM_LEVEL, state->strategy);
        if (ret != Z_OK) {
            FUNC1(state->out);
            FUNC1(state->in);
            FUNC2(state, Z_MEM_ERROR, "out of memory");
            return -1;
        }
    }

    /* mark state as initialized */
    state->size = state->want;

    /* initialize write buffer if compressing */
    if (!state->direct) {
        strm->avail_out = state->size;
        strm->next_out = state->out;
        state->x.next = strm->next_out;
    }
    return 0;
}