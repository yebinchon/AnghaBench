
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int eof; scalar_t__ format; scalar_t__ type; TYPE_2__* ist; scalar_t__ filter; } ;
struct TYPE_7__ {TYPE_1__* st; int file_index; } ;
struct TYPE_6__ {int index; int codecpar; } ;
typedef TYPE_3__ InputFilter ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_BUFFERSRC_FLAG_PUSH ;
 int AV_LOG_ERROR ;
 int av_buffersrc_close (scalar_t__,int ,int ) ;
 int av_log (int *,int ,char*,int ,int ) ;
 int ifilter_parameters_from_codecpar (TYPE_3__*,int ) ;

__attribute__((used)) static int ifilter_send_eof(InputFilter *ifilter, int64_t pts)
{
    int ret;

    ifilter->eof = 1;

    if (ifilter->filter) {
        ret = av_buffersrc_close(ifilter->filter, pts, AV_BUFFERSRC_FLAG_PUSH);
        if (ret < 0)
            return ret;
    } else {

        if (ifilter->format < 0)
            ifilter_parameters_from_codecpar(ifilter, ifilter->ist->st->codecpar);
        if (ifilter->format < 0 && (ifilter->type == AVMEDIA_TYPE_AUDIO || ifilter->type == AVMEDIA_TYPE_VIDEO)) {
            av_log(((void*)0), AV_LOG_ERROR, "Cannot determine format of input stream %d:%d after EOF\n", ifilter->ist->file_index, ifilter->ist->st->index);
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}
