
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iec61883_data {int (* parse_queue ) (struct iec61883_data*,int *) ;int receive_error; int mutex; int cond; int eof; } ;
struct TYPE_3__ {struct iec61883_data* priv_data; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVFormatContext ;


 int iec61883_receive_task (void*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct iec61883_data*,int *) ;
 int stub2 (struct iec61883_data*,int *) ;

__attribute__((used)) static int iec61883_read_packet(AVFormatContext *context, AVPacket *pkt)
{
    struct iec61883_data *dv = context->priv_data;
    int size;
    int result;
    while ((size = dv->parse_queue(dv, pkt)) == -1) {
        iec61883_receive_task((void *)dv);
        if (dv->receive_error)
            return dv->receive_error;
    }


    return size;
}
