
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sender_data {int workload; int queue; int id; } ;
struct message {TYPE_1__* frame; int magic; } ;
struct TYPE_4__ {int width; int height; int format; int * metadata; } ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int AV_LOG_INFO ;
 int AV_PIX_FMT_RGBA ;
 int ENOMEM ;
 int MAGIC ;
 char* av_asprintf (char*,int,int,int ) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_err2str (int) ;
 TYPE_1__* av_frame_alloc () ;
 int av_frame_free (TYPE_1__**) ;
 int av_frame_get_buffer (TYPE_1__*,int) ;
 int av_log (int *,int ,char*,int ,...) ;
 int av_thread_message_flush (int ) ;
 int av_thread_message_queue_send (int ,struct message*,int ) ;
 int av_thread_message_queue_set_err_recv (int ,int) ;
 int rand () ;

__attribute__((used)) static void *sender_thread(void *arg)
{
    int i, ret = 0;
    struct sender_data *wd = arg;

    av_log(((void*)0), AV_LOG_INFO, "sender #%d: workload=%d\n", wd->id, wd->workload);
    for (i = 0; i < wd->workload; i++) {
        if (rand() % wd->workload < wd->workload / 10) {
            av_log(((void*)0), AV_LOG_INFO, "sender #%d: flushing the queue\n", wd->id);
            av_thread_message_flush(wd->queue);
        } else {
            char *val;
            AVDictionary *meta = ((void*)0);
            struct message msg = {
                .magic = MAGIC,
                .frame = av_frame_alloc(),
            };

            if (!msg.frame) {
                ret = AVERROR(ENOMEM);
                break;
            }


            val = av_asprintf("frame %d/%d from sender %d",
                              i + 1, wd->workload, wd->id);
            if (!val) {
                av_frame_free(&msg.frame);
                ret = AVERROR(ENOMEM);
                break;
            }
            ret = av_dict_set(&meta, "sig", val, AV_DICT_DONT_STRDUP_VAL);
            if (ret < 0) {
                av_frame_free(&msg.frame);
                break;
            }
            msg.frame->metadata = meta;


            msg.frame->format = AV_PIX_FMT_RGBA;
            msg.frame->width = 320;
            msg.frame->height = 240;
            ret = av_frame_get_buffer(msg.frame, 32);
            if (ret < 0) {
                av_frame_free(&msg.frame);
                break;
            }


            av_log(((void*)0), AV_LOG_INFO, "sender #%d: sending my work (%d/%d frame:%p)\n",
                   wd->id, i + 1, wd->workload, msg.frame);
            ret = av_thread_message_queue_send(wd->queue, &msg, 0);
            if (ret < 0) {
                av_frame_free(&msg.frame);
                break;
            }
        }
    }
    av_log(((void*)0), AV_LOG_INFO, "sender #%d: my work is done here (%s)\n",
           wd->id, av_err2str(ret));
    av_thread_message_queue_set_err_recv(wd->queue, ret < 0 ? ret : AVERROR_EOF);
    return ((void*)0);
}
