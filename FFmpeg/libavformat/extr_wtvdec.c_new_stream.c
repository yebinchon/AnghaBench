
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WtvStream ;
struct TYPE_8__ {int id; int need_parsing; TYPE_1__* codecpar; int * priv_data; } ;
struct TYPE_7__ {int codec_type; scalar_t__ extradata_size; scalar_t__ extradata; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVSTREAM_PARSE_FULL ;
 int av_free (int *) ;
 int av_freep (scalar_t__*) ;
 int * av_mallocz (int) ;
 TYPE_2__* avformat_new_stream (int *,int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static AVStream * new_stream(AVFormatContext *s, AVStream *st, int sid, int codec_type)
{
    if (st) {
        if (st->codecpar->extradata) {
            av_freep(&st->codecpar->extradata);
            st->codecpar->extradata_size = 0;
        }
    } else {
        WtvStream *wst = av_mallocz(sizeof(WtvStream));
        if (!wst)
            return ((void*)0);
        st = avformat_new_stream(s, ((void*)0));
        if (!st) {
            av_free(wst);
            return ((void*)0);
        }
        st->id = sid;
        st->priv_data = wst;
    }
    st->codecpar->codec_type = codec_type;
    st->need_parsing = AVSTREAM_PARSE_FULL;
    avpriv_set_pts_info(st, 64, 1, 10000000);
    return st;
}
