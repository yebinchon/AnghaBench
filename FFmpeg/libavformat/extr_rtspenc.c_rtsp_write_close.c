
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int control_uri; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ AVFormatContext ;


 int ff_network_close () ;
 int ff_rtsp_close_connections (TYPE_2__*) ;
 int ff_rtsp_close_streams (TYPE_2__*) ;
 int ff_rtsp_send_cmd_async (TYPE_2__*,char*,int ,int *) ;
 int ff_rtsp_undo_setup (TYPE_2__*,int) ;

__attribute__((used)) static int rtsp_write_close(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;




    ff_rtsp_undo_setup(s, 1);

    ff_rtsp_send_cmd_async(s, "TEARDOWN", rt->control_uri, ((void*)0));

    ff_rtsp_close_streams(s);
    ff_rtsp_close_connections(s);
    ff_network_close();
    return 0;
}
