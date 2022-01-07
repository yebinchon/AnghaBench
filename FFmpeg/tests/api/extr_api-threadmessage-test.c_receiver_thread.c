
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct receiver_data {int workload; int queue; int id; } ;
struct message {scalar_t__ magic; TYPE_2__* frame; } ;
struct TYPE_5__ {int * metadata; } ;
struct TYPE_4__ {int value; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR_EOF ;
 int AV_LOG_INFO ;
 scalar_t__ MAGIC ;
 int av_assert0 (int) ;
 TYPE_1__* av_dict_get (int *,char*,int *,int ) ;
 int av_frame_free (TYPE_2__**) ;
 int av_log (int *,int ,char*,int,...) ;
 int av_thread_message_flush (int ) ;
 int av_thread_message_queue_nb_elems (int ) ;
 int av_thread_message_queue_recv (int ,struct message*,int ) ;
 int av_thread_message_queue_set_err_send (int ,int) ;
 int rand () ;

__attribute__((used)) static void *receiver_thread(void *arg)
{
    int i, ret = 0;
    struct receiver_data *rd = arg;

    for (i = 0; i < rd->workload; i++) {
        if (rand() % rd->workload < rd->workload / 10) {
            av_log(((void*)0), AV_LOG_INFO, "receiver #%d: flushing the queue, "
                   "discarding %d message(s)\n", rd->id,
                   av_thread_message_queue_nb_elems(rd->queue));
            av_thread_message_flush(rd->queue);
        } else {
            struct message msg;
            AVDictionary *meta;
            AVDictionaryEntry *e;

            ret = av_thread_message_queue_recv(rd->queue, &msg, 0);
            if (ret < 0)
                break;
            av_assert0(msg.magic == MAGIC);
            meta = msg.frame->metadata;
            e = av_dict_get(meta, "sig", ((void*)0), 0);
            av_log(((void*)0), AV_LOG_INFO, "got \"%s\" (%p)\n", e->value, msg.frame);
            av_frame_free(&msg.frame);
        }
    }

    av_log(((void*)0), AV_LOG_INFO, "consumed enough (%d), stop\n", i);
    av_thread_message_queue_set_err_send(rd->queue, ret < 0 ? ret : AVERROR_EOF);

    return ((void*)0);
}
