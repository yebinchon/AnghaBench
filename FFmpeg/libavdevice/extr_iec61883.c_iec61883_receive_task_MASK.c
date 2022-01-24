#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int revents; } ;
struct iec61883_data {int receiving; int eof; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  raw1394; TYPE_1__ raw1394_poll; int /*<<< orphan*/  receive_error; scalar_t__ thread_loop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EIO ; 
 int POLLIN ; 
 int POLLPRI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC7(void *opaque)
{
    struct iec61883_data *dv = (struct iec61883_data *)opaque;
    int result;

#if THREADS
    while (dv->thread_loop)
#endif
    {
        while ((result = FUNC2(&dv->raw1394_poll, 1, 200)) < 0) {
            if (!(errno == EAGAIN || errno == EINTR)) {
                FUNC1(NULL, AV_LOG_ERROR, "Raw1394 poll error occurred.\n");
                dv->receive_error = FUNC0(EIO);
                return NULL;
            }
        }
        if (result > 0 && ((dv->raw1394_poll.revents & POLLIN)
                           || (dv->raw1394_poll.revents & POLLPRI))) {
            dv->receiving = 1;
            FUNC6(dv->raw1394);
        } else if (dv->receiving) {
            FUNC1(NULL, AV_LOG_ERROR, "No more input data available\n");
#if THREADS
            pthread_mutex_lock(&dv->mutex);
            dv->eof = 1;
            pthread_cond_broadcast(&dv->cond);
            pthread_mutex_unlock(&dv->mutex);
#else
            dv->eof = 1;
#endif
            return NULL;
        }
    }

    return NULL;
}