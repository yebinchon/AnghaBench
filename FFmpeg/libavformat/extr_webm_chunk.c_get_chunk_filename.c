
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ chunk_index; int header_filename; TYPE_2__* avf; } ;
typedef TYPE_1__ WebMChunkContext ;
struct TYPE_6__ {int url; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int MAX_FILENAME_SIZE ;
 scalar_t__ av_get_frame_filename (char*,int,int ,scalar_t__) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int av_strlcpy (char*,int ,int) ;

__attribute__((used)) static int get_chunk_filename(AVFormatContext *s, int is_header, char filename[MAX_FILENAME_SIZE])
{
    WebMChunkContext *wc = s->priv_data;
    AVFormatContext *oc = wc->avf;
    if (!filename) {
        return AVERROR(EINVAL);
    }
    if (is_header) {
        int len;
        if (!wc->header_filename) {
            av_log(oc, AV_LOG_ERROR, "No header filename provided\n");
            return AVERROR(EINVAL);
        }
        len = av_strlcpy(filename, wc->header_filename, MAX_FILENAME_SIZE);
        if (len >= MAX_FILENAME_SIZE) {
            av_log(oc, AV_LOG_ERROR, "Header filename too long\n");
            return AVERROR(EINVAL);
        }
    } else {
        if (av_get_frame_filename(filename, MAX_FILENAME_SIZE,
                                  s->url, wc->chunk_index - 1) < 0) {
            av_log(oc, AV_LOG_ERROR, "Invalid chunk filename template '%s'\n", s->url);
            return AVERROR(EINVAL);
        }
    }
    return 0;
}
