
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int rtsp_flags; int real_setup_cache; int * real_setup; int control_uri; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ AVFormatContext ;


 int RTSP_FLAG_LISTEN ;
 int av_freep (int *) ;
 int ff_network_close () ;
 int ff_rtsp_close_connections (TYPE_2__*) ;
 int ff_rtsp_close_streams (TYPE_2__*) ;
 int ff_rtsp_send_cmd_async (TYPE_2__*,char*,int ,int *) ;

__attribute__((used)) static int rtsp_read_close(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;

    if (!(rt->rtsp_flags & RTSP_FLAG_LISTEN))
        ff_rtsp_send_cmd_async(s, "TEARDOWN", rt->control_uri, ((void*)0));

    ff_rtsp_close_streams(s);
    ff_rtsp_close_connections(s);
    ff_network_close();
    rt->real_setup = ((void*)0);
    av_freep(&rt->real_setup_cache);
    return 0;
}
