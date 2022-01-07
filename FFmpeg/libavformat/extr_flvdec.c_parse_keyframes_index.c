
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int str_val ;
typedef scalar_t__ int64_t ;
struct TYPE_8__ {int flags; TYPE_2__* priv_data; } ;
struct TYPE_7__ {unsigned int keyframe_count; scalar_t__* keyframe_times; scalar_t__* keyframe_filepositions; unsigned int validate_count; TYPE_1__* validate_index; } ;
struct TYPE_6__ {scalar_t__ dts; scalar_t__ pos; } ;
typedef TYPE_2__ FLVContext ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ AMF_DATA_TYPE_ARRAY ;
 scalar_t__ AMF_DATA_TYPE_NUMBER ;
 int AVERROR (int ) ;
 int AVFMT_FLAG_IGNIDX ;
 int AV_LOG_DEBUG ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int ENOSYS ;
 unsigned int FFMIN (int,unsigned int) ;
 int KEYFRAMES_BYTEOFFSET_TAG ;
 int KEYFRAMES_TIMESTAMP_TAG ;
 int SEEK_SET ;
 scalar_t__ amf_get_string (int *,char*,int) ;
 int av_assert0 (int) ;
 int av_freep (scalar_t__**) ;
 scalar_t__ av_int2double (int ) ;
 int av_log (TYPE_3__*,int ,char*) ;
 scalar_t__* av_mallocz (int) ;
 scalar_t__ avio_r8 (int *) ;
 unsigned int avio_rb32 (int *) ;
 int avio_rb64 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int parse_keyframes_index(AVFormatContext *s, AVIOContext *ioc, int64_t max_pos)
{
    FLVContext *flv = s->priv_data;
    unsigned int timeslen = 0, fileposlen = 0, i;
    char str_val[256];
    int64_t *times = ((void*)0);
    int64_t *filepositions = ((void*)0);
    int ret = AVERROR(ENOSYS);
    int64_t initial_pos = avio_tell(ioc);

    if (flv->keyframe_count > 0) {
        av_log(s, AV_LOG_DEBUG, "keyframes have been parsed\n");
        return 0;
    }
    av_assert0(!flv->keyframe_times);
    av_assert0(!flv->keyframe_filepositions);

    if (s->flags & AVFMT_FLAG_IGNIDX)
        return 0;

    while (avio_tell(ioc) < max_pos - 2 &&
           amf_get_string(ioc, str_val, sizeof(str_val)) > 0) {
        int64_t **current_array;
        unsigned int arraylen;


        if (avio_r8(ioc) != AMF_DATA_TYPE_ARRAY)
            break;

        arraylen = avio_rb32(ioc);
        if (arraylen>>28)
            break;

        if (!strcmp(KEYFRAMES_TIMESTAMP_TAG , str_val) && !times) {
            current_array = &times;
            timeslen = arraylen;
        } else if (!strcmp(KEYFRAMES_BYTEOFFSET_TAG, str_val) &&
                   !filepositions) {
            current_array = &filepositions;
            fileposlen = arraylen;
        } else


            break;

        if (!(*current_array = av_mallocz(sizeof(**current_array) * arraylen))) {
            ret = AVERROR(ENOMEM);
            goto finish;
        }

        for (i = 0; i < arraylen && avio_tell(ioc) < max_pos - 1; i++) {
            if (avio_r8(ioc) != AMF_DATA_TYPE_NUMBER)
                goto invalid;
            current_array[0][i] = av_int2double(avio_rb64(ioc));
        }
        if (times && filepositions) {


            ret = 0;
            break;
        }
    }

    if (timeslen == fileposlen && fileposlen>1 && max_pos <= filepositions[0]) {
        for (i = 0; i < FFMIN(2,fileposlen); i++) {
            flv->validate_index[i].pos = filepositions[i];
            flv->validate_index[i].dts = times[i] * 1000;
            flv->validate_count = i + 1;
        }
        flv->keyframe_times = times;
        flv->keyframe_filepositions = filepositions;
        flv->keyframe_count = timeslen;
        times = ((void*)0);
        filepositions = ((void*)0);
    } else {
invalid:
        av_log(s, AV_LOG_WARNING, "Invalid keyframes object, skipping.\n");
    }

finish:
    av_freep(&times);
    av_freep(&filepositions);
    avio_seek(ioc, initial_pos, SEEK_SET);
    return ret;
}
