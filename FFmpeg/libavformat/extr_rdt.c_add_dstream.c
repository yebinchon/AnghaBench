
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int first_dts; TYPE_1__* codecpar; int id; } ;
struct TYPE_6__ {int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 TYPE_2__* avformat_new_stream (int *,int *) ;

__attribute__((used)) static AVStream *
add_dstream(AVFormatContext *s, AVStream *orig_st)
{
    AVStream *st;

    if (!(st = avformat_new_stream(s, ((void*)0))))
        return ((void*)0);
    st->id = orig_st->id;
    st->codecpar->codec_type = orig_st->codecpar->codec_type;
    st->first_dts = orig_st->first_dts;

    return st;
}
