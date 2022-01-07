
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ogg_stream {int bufpos; int pstart; int * buf; scalar_t__ bufsize; } ;
struct ogg {struct ogg_stream* streams; } ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int av_free (int *) ;
 int * av_malloc (scalar_t__) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int ogg_new_buf(struct ogg *ogg, int idx)
{
    struct ogg_stream *os = ogg->streams + idx;
    uint8_t *nb = av_malloc(os->bufsize + AV_INPUT_BUFFER_PADDING_SIZE);
    int size = os->bufpos - os->pstart;

    if (!nb)
        return AVERROR(ENOMEM);

    if (os->buf) {
        memcpy(nb, os->buf + os->pstart, size);
        av_free(os->buf);
    }

    os->buf = nb;
    os->bufpos = size;
    os->pstart = 0;

    return 0;
}
