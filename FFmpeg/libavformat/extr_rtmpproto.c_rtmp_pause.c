
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int last_timestamp; } ;
typedef TYPE_2__ RTMPContext ;


 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int gen_pause (TYPE_1__*,TYPE_2__*,int,int ) ;

__attribute__((used)) static int rtmp_pause(URLContext *s, int pause)
{
    RTMPContext *rt = s->priv_data;
    int ret;
    av_log(s, AV_LOG_DEBUG, "Pause at timestamp %d\n",
           rt->last_timestamp);
    if ((ret = gen_pause(s, rt, pause, rt->last_timestamp)) < 0) {
        av_log(s, AV_LOG_ERROR, "Unable to send pause command at timestamp %d\n",
               rt->last_timestamp);
        return ret;
    }
    return 0;
}
