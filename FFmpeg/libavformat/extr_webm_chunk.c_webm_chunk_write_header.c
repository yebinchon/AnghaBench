
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ http_method; TYPE_3__* avf; int prev_pts; int oformat; int chunk_start_index; int chunk_index; } ;
typedef TYPE_2__ WebMChunkContext ;
struct TYPE_16__ {scalar_t__ seekable; } ;
struct TYPE_15__ {int nb_streams; int (* io_open ) (TYPE_3__*,TYPE_7__**,int ,int ,int **) ;int * streams; TYPE_7__* pb; TYPE_1__* oformat; int url; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int (* write_header ) (TYPE_3__*) ;} ;
typedef TYPE_3__ AVFormatContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_MUXER_NOT_FOUND ;
 int AVIO_FLAG_WRITE ;
 int AV_NOPTS_VALUE ;
 int ENOMEM ;
 int MAX_FILENAME_SIZE ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,scalar_t__,int ) ;
 int av_guess_format (char*,int ,char*) ;
 char* av_strdup (char*) ;
 int avpriv_set_pts_info (int ,int,int,int) ;
 int chunk_mux_init (TYPE_3__*) ;
 int ff_format_io_close (TYPE_3__*,TYPE_7__**) ;
 int ff_format_set_url (TYPE_3__*,char*) ;
 int get_chunk_filename (TYPE_3__*,int,char*) ;
 int stub1 (TYPE_3__*,TYPE_7__**,int ,int ,int **) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static int webm_chunk_write_header(AVFormatContext *s)
{
    WebMChunkContext *wc = s->priv_data;
    AVFormatContext *oc = ((void*)0);
    int ret;
    int i;
    AVDictionary *options = ((void*)0);
    char oc_filename[MAX_FILENAME_SIZE];
    char *oc_url;


    if (s->nb_streams != 1) { return AVERROR_INVALIDDATA; }

    wc->chunk_index = wc->chunk_start_index;
    wc->oformat = av_guess_format("webm", s->url, "video/webm");
    if (!wc->oformat)
        return AVERROR_MUXER_NOT_FOUND;
    wc->prev_pts = AV_NOPTS_VALUE;

    ret = chunk_mux_init(s);
    if (ret < 0)
        return ret;
    oc = wc->avf;
    ret = get_chunk_filename(s, 1, oc_filename);
    if (ret < 0)
        return ret;
    oc_url = av_strdup(oc_filename);
    if (!oc_url)
        return AVERROR(ENOMEM);
    ff_format_set_url(oc, oc_url);
    if (wc->http_method)
        av_dict_set(&options, "method", wc->http_method, 0);
    ret = s->io_open(s, &oc->pb, oc->url, AVIO_FLAG_WRITE, &options);
    av_dict_free(&options);
    if (ret < 0)
        return ret;

    oc->pb->seekable = 0;
    ret = oc->oformat->write_header(oc);
    if (ret < 0)
        return ret;
    ff_format_io_close(s, &oc->pb);
    for (i = 0; i < s->nb_streams; i++) {

        avpriv_set_pts_info(s->streams[i], 64, 1, 1000);
    }
    return 0;
}
