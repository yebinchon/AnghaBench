
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_6__ {int body_sid; scalar_t__ wrapping; } ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef scalar_t__ MXFWrappingScheme ;
typedef TYPE_2__ MXFTrack ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ UnknownWrapped ;

__attribute__((used)) static MXFWrappingScheme mxf_get_wrapping_by_body_sid(AVFormatContext *s, int body_sid)
{
    for (int i = 0; i < s->nb_streams; i++) {
        MXFTrack *track = s->streams[i]->priv_data;
        if (track && track->body_sid == body_sid && track->wrapping != UnknownWrapped)
            return track->wrapping;
    }
    return UnknownWrapped;
}
