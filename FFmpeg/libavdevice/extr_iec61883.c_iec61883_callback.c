
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iec61883_data {scalar_t__ packets; scalar_t__ max_packets; int mutex; int cond; TYPE_1__* queue_last; TYPE_1__* queue_first; } ;
struct TYPE_4__ {int len; struct TYPE_4__* next; scalar_t__ buf; } ;
typedef TYPE_1__ DVPacket ;


 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int av_free (TYPE_1__*) ;
 int av_log (int *,int ,char*) ;
 scalar_t__ av_malloc (scalar_t__) ;
 TYPE_1__* av_mallocz (int) ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int iec61883_callback(unsigned char *data, int length,
                             int complete, void *callback_data)
{
    struct iec61883_data *dv = callback_data;
    DVPacket *packet;
    int ret;





    if (dv->packets >= dv->max_packets) {
        av_log(((void*)0), AV_LOG_ERROR, "DV packet queue overrun, dropping.\n");
        ret = 0;
        goto exit;
    }

    packet = av_mallocz(sizeof(*packet));
    if (!packet) {
        ret = -1;
        goto exit;
    }

    packet->buf = av_malloc(length + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!packet->buf) {
        av_free(packet);
        ret = -1;
        goto exit;
    }
    packet->len = length;

    memcpy(packet->buf, data, length);
    memset(packet->buf + length, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    if (dv->queue_first) {
        dv->queue_last->next = packet;
        dv->queue_last = packet;
    } else {
        dv->queue_first = packet;
        dv->queue_last = packet;
    }
    dv->packets++;

    ret = 0;

exit:




    return ret;
}
