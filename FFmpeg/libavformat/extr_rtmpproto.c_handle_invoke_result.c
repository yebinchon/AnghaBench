
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_25__ {int live; double stream_id; double duration; scalar_t__ is_input; scalar_t__ playpath; scalar_t__ subscribe; } ;
typedef int RTMPPacket ;
typedef TYPE_2__ RTMPContext ;


 int AV_LOG_WARNING ;
 int av_free (char*) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int find_tracked_method (TYPE_1__*,int *,int,char**) ;
 int gen_buffer_time (TYPE_1__*,TYPE_2__*) ;
 int gen_create_stream (TYPE_1__*,TYPE_2__*) ;
 int gen_fcpublish_stream (TYPE_1__*,TYPE_2__*) ;
 int gen_fcsubscribe_stream (TYPE_1__*,TYPE_2__*,scalar_t__) ;
 int gen_get_stream_length (TYPE_1__*,TYPE_2__*) ;
 int gen_play (TYPE_1__*,TYPE_2__*) ;
 int gen_publish (TYPE_1__*,TYPE_2__*) ;
 int gen_release_stream (TYPE_1__*,TYPE_2__*) ;
 int gen_window_ack_size (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ read_number_result (int *,double*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int handle_invoke_result(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    char *tracked_method = ((void*)0);
    int ret = 0;

    if ((ret = find_tracked_method(s, pkt, 10, &tracked_method)) < 0)
        return ret;

    if (!tracked_method) {

        return ret;
    }

    if (!strcmp(tracked_method, "connect")) {
        if (!rt->is_input) {
            if ((ret = gen_release_stream(s, rt)) < 0)
                goto fail;

            if ((ret = gen_fcpublish_stream(s, rt)) < 0)
                goto fail;
        } else {
            if ((ret = gen_window_ack_size(s, rt)) < 0)
                goto fail;
        }

        if ((ret = gen_create_stream(s, rt)) < 0)
            goto fail;

        if (rt->is_input) {


            if (rt->subscribe) {
                if ((ret = gen_fcsubscribe_stream(s, rt, rt->subscribe)) < 0)
                    goto fail;
            } else if (rt->live == -1) {
                if ((ret = gen_fcsubscribe_stream(s, rt, rt->playpath)) < 0)
                    goto fail;
            }
        }
    } else if (!strcmp(tracked_method, "createStream")) {
        double stream_id;
        if (read_number_result(pkt, &stream_id)) {
            av_log(s, AV_LOG_WARNING, "Unexpected reply on connect()\n");
        } else {
            rt->stream_id = stream_id;
        }

        if (!rt->is_input) {
            if ((ret = gen_publish(s, rt)) < 0)
                goto fail;
        } else {
            if (rt->live != -1) {
                if ((ret = gen_get_stream_length(s, rt)) < 0)
                    goto fail;
            }
            if ((ret = gen_play(s, rt)) < 0)
                goto fail;
            if ((ret = gen_buffer_time(s, rt)) < 0)
                goto fail;
        }
    } else if (!strcmp(tracked_method, "getStreamLength")) {
        if (read_number_result(pkt, &rt->duration)) {
            av_log(s, AV_LOG_WARNING, "Unexpected reply on getStreamLength()\n");
        }
    }

fail:
    av_free(tracked_method);
    return ret;
}
