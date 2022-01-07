
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int host ;
struct TYPE_7__ {int url; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int real_challenge; } ;
typedef TYPE_1__ RTSPState ;
typedef TYPE_2__ AVFormatContext ;


 int RTSP_LOWER_TRANSPORT_TCP ;
 int av_url_split (int *,int ,int *,int ,char*,int,int*,int *,int ,int ) ;
 int ff_rtsp_make_setup_request (TYPE_2__*,char*,int,int ,int ) ;
 int ff_rtsp_undo_setup (TYPE_2__*,int ) ;

__attribute__((used)) static int resetup_tcp(AVFormatContext *s)
{
    RTSPState *rt = s->priv_data;
    char host[1024];
    int port;

    av_url_split(((void*)0), 0, ((void*)0), 0, host, sizeof(host), &port, ((void*)0), 0,
                 s->url);
    ff_rtsp_undo_setup(s, 0);
    return ff_rtsp_make_setup_request(s, host, port, RTSP_LOWER_TRANSPORT_TCP,
                                      rt->real_challenge);
}
