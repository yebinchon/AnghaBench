
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_5__ {scalar_t__ num_levels; TYPE_1__* levels; int ctx; } ;
struct TYPE_4__ {int length; int start; } ;
typedef TYPE_1__ MatroskaLevel ;
typedef TYPE_2__ MatroskaDemuxContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ EBML_MAX_DEPTH ;
 int ENOSYS ;
 int av_log (int ,int ,char*,scalar_t__) ;

__attribute__((used)) static int ebml_read_master(MatroskaDemuxContext *matroska,
                            uint64_t length, int64_t pos)
{
    MatroskaLevel *level;

    if (matroska->num_levels >= EBML_MAX_DEPTH) {
        av_log(matroska->ctx, AV_LOG_ERROR,
               "File moves beyond max. allowed depth (%d)\n", EBML_MAX_DEPTH);
        return AVERROR(ENOSYS);
    }

    level = &matroska->levels[matroska->num_levels++];
    level->start = pos;
    level->length = length;

    return 0;
}
