
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revents; } ;
struct iec61883_data {int receiving; int eof; int mutex; int cond; int raw1394; TYPE_1__ raw1394_poll; int receive_error; scalar_t__ thread_loop; } ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int EIO ;
 int POLLIN ;
 int POLLPRI ;
 int av_log (int *,int ,char*) ;
 scalar_t__ errno ;
 int poll (TYPE_1__*,int,int) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int raw1394_loop_iterate (int ) ;

__attribute__((used)) static void *iec61883_receive_task(void *opaque)
{
    struct iec61883_data *dv = (struct iec61883_data *)opaque;
    int result;




    {
        while ((result = poll(&dv->raw1394_poll, 1, 200)) < 0) {
            if (!(errno == EAGAIN || errno == EINTR)) {
                av_log(((void*)0), AV_LOG_ERROR, "Raw1394 poll error occurred.\n");
                dv->receive_error = AVERROR(EIO);
                return ((void*)0);
            }
        }
        if (result > 0 && ((dv->raw1394_poll.revents & POLLIN)
                           || (dv->raw1394_poll.revents & POLLPRI))) {
            dv->receiving = 1;
            raw1394_loop_iterate(dv->raw1394);
        } else if (dv->receiving) {
            av_log(((void*)0), AV_LOG_ERROR, "No more input data available\n");






            dv->eof = 1;

            return ((void*)0);
        }
    }

    return ((void*)0);
}
