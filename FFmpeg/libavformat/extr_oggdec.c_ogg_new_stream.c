
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct ogg_stream {int header; int buf; int start_granule; scalar_t__ bufsize; int serial; } ;
struct ogg {int nstreams; struct ogg_stream* streams; scalar_t__ state; } ;
struct TYPE_9__ {struct ogg* priv_data; } ;
struct TYPE_8__ {int id; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 scalar_t__ DECODER_BUFFER_SIZE ;
 int ENOMEM ;
 int OGG_NOGRANULE_VALUE ;
 int av_freep (int *) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int av_malloc (scalar_t__) ;
 struct ogg_stream* av_realloc (struct ogg_stream*,size_t) ;
 scalar_t__ av_size_mult (int,int,size_t*) ;
 TYPE_1__* avformat_new_stream (TYPE_2__*,int *) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;
 int memset (struct ogg_stream*,int ,int) ;

__attribute__((used)) static int ogg_new_stream(AVFormatContext *s, uint32_t serial)
{
    struct ogg *ogg = s->priv_data;
    int idx = ogg->nstreams;
    AVStream *st;
    struct ogg_stream *os;
    size_t size;

    if (ogg->state) {
        av_log(s, AV_LOG_ERROR, "New streams are not supposed to be added "
               "in between Ogg context save/restore operations.\n");
        return AVERROR_BUG;
    }


    if (av_size_mult(ogg->nstreams + 1, sizeof(*ogg->streams), &size) < 0 ||
        !(os = av_realloc(ogg->streams, size)))
        return AVERROR(ENOMEM);
    ogg->streams = os;
    os = ogg->streams + idx;
    memset(os, 0, sizeof(*os));
    os->serial = serial;
    os->bufsize = DECODER_BUFFER_SIZE;
    os->buf = av_malloc(os->bufsize + AV_INPUT_BUFFER_PADDING_SIZE);
    os->header = -1;
    os->start_granule = OGG_NOGRANULE_VALUE;
    if (!os->buf)
        return AVERROR(ENOMEM);


    st = avformat_new_stream(s, ((void*)0));
    if (!st) {
        av_freep(&os->buf);
        return AVERROR(ENOMEM);
    }
    st->id = idx;
    avpriv_set_pts_info(st, 64, 1, 1000000);

    ogg->nstreams++;
    return idx;
}
