#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int flags; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {int close_req; int /*<<< orphan*/  filters; int /*<<< orphan*/  fifo; int /*<<< orphan*/  udp_fd; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; int /*<<< orphan*/  circular_buffer_thread; scalar_t__ thread_started; int /*<<< orphan*/  local_addr_storage; int /*<<< orphan*/  dest_addr; scalar_t__ is_multicast; } ;
typedef  TYPE_2__ UDPContext ;

/* Variables and functions */
 int AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*) ; 

__attribute__((used)) static int FUNC13(URLContext *h)
{
    UDPContext *s = h->priv_data;

#if HAVE_PTHREAD_CANCEL
    // Request close once writing is finished
    if (s->thread_started && !(h->flags & AVIO_FLAG_READ)) {
        pthread_mutex_lock(&s->mutex);
        s->close_req = 1;
        pthread_cond_signal(&s->cond);
        pthread_mutex_unlock(&s->mutex);
    }
#endif

    if (s->is_multicast && (h->flags & AVIO_FLAG_READ))
        FUNC12(s->udp_fd, (struct sockaddr *)&s->dest_addr,(struct sockaddr *)&s->local_addr_storage);
#if HAVE_PTHREAD_CANCEL
    if (s->thread_started) {
        int ret;
        // Cancel only read, as write has been signaled as success to the user
        if (h->flags & AVIO_FLAG_READ)
            pthread_cancel(s->circular_buffer_thread);
        ret = pthread_join(s->circular_buffer_thread, NULL);
        if (ret != 0)
            av_log(h, AV_LOG_ERROR, "pthread_join(): %s\n", strerror(ret));
        pthread_mutex_destroy(&s->mutex);
        pthread_cond_destroy(&s->cond);
    }
#endif
    FUNC2(s->udp_fd);
    FUNC0(&s->fifo);
    FUNC3(&s->filters);
    return 0;
}