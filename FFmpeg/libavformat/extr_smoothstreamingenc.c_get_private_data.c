
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int* extradata; int extradata_size; scalar_t__ codec_id; } ;
struct TYPE_8__ {int * private_str; TYPE_2__* ctx; } ;
struct TYPE_7__ {TYPE_1__** streams; } ;
struct TYPE_6__ {TYPE_4__* codecpar; } ;
typedef TYPE_3__ OutputStream ;
typedef TYPE_4__ AVCodecParameters ;


 scalar_t__ AV_CODEC_ID_H264 ;
 int av_free (int*) ;
 int * av_mallocz (int) ;
 int ff_avc_write_annexb_extradata (int*,int**,int*) ;
 int snprintf (int *,int,char*,int) ;

__attribute__((used)) static void get_private_data(OutputStream *os)
{
    AVCodecParameters *par = os->ctx->streams[0]->codecpar;
    uint8_t *ptr = par->extradata;
    int size = par->extradata_size;
    int i;
    if (par->codec_id == AV_CODEC_ID_H264) {
        ff_avc_write_annexb_extradata(ptr, &ptr, &size);
        if (!ptr)
            ptr = par->extradata;
    }
    if (!ptr)
        return;
    os->private_str = av_mallocz(2*size + 1);
    if (!os->private_str)
        goto fail;
    for (i = 0; i < size; i++)
        snprintf(&os->private_str[2*i], 3, "%02x", ptr[i]);
fail:
    if (ptr != par->extradata)
        av_free(ptr);
}
