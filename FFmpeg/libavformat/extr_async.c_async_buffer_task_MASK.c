#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int io_eof_reached; scalar_t__ io_error; int seek_completed; scalar_t__ inner_io_error; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond_wakeup_main; int /*<<< orphan*/  cond_wakeup_background; scalar_t__ seek_request; scalar_t__ seek_ret; int /*<<< orphan*/  seek_whence; int /*<<< orphan*/  seek_pos; int /*<<< orphan*/  inner; int /*<<< orphan*/  ring; } ;
typedef  int /*<<< orphan*/  RingBuffer ;
typedef  TYPE_2__ Context ;

/* Variables and functions */
 scalar_t__ AVERROR_EXIT ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wrapped_url_read ; 

__attribute__((used)) static void *FUNC10(void *arg)
{
    URLContext   *h    = arg;
    Context      *c    = h->priv_data;
    RingBuffer   *ring = &c->ring;
    int           ret  = 0;
    int64_t       seek_ret;

    while (1) {
        int fifo_space, to_copy;

        FUNC5(&c->mutex);
        if (FUNC1(h)) {
            c->io_eof_reached = 1;
            c->io_error       = AVERROR_EXIT;
            FUNC3(&c->cond_wakeup_main);
            FUNC6(&c->mutex);
            break;
        }

        if (c->seek_request) {
            seek_ret = FUNC2(c->inner, c->seek_pos, c->seek_whence);
            if (seek_ret >= 0) {
                c->io_eof_reached = 0;
                c->io_error       = 0;
                FUNC8(ring);
            }

            c->seek_completed = 1;
            c->seek_ret       = seek_ret;
            c->seek_request   = 0;


            FUNC3(&c->cond_wakeup_main);
            FUNC6(&c->mutex);
            continue;
        }

        fifo_space = FUNC9(ring);
        if (c->io_eof_reached || fifo_space <= 0) {
            FUNC3(&c->cond_wakeup_main);
            FUNC4(&c->cond_wakeup_background, &c->mutex);
            FUNC6(&c->mutex);
            continue;
        }
        FUNC6(&c->mutex);

        to_copy = FUNC0(4096, fifo_space);
        ret = FUNC7(ring, (void *)h, to_copy, wrapped_url_read);

        FUNC5(&c->mutex);
        if (ret <= 0) {
            c->io_eof_reached = 1;
            if (c->inner_io_error < 0)
                c->io_error = c->inner_io_error;
        }

        FUNC3(&c->cond_wakeup_main);
        FUNC6(&c->mutex);
    }

    return NULL;
}