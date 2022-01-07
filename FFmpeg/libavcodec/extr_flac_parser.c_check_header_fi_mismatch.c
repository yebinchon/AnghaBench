
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ samplerate; scalar_t__ bps; scalar_t__ is_var_size; scalar_t__ channels; } ;
struct TYPE_6__ {int avctx; } ;
typedef TYPE_1__ FLACParseContext ;
typedef TYPE_2__ FLACFrameInfo ;


 scalar_t__ AV_LOG_WARNING ;
 scalar_t__ FLAC_HEADER_BASE_SCORE ;
 scalar_t__ FLAC_HEADER_CHANGED_PENALTY ;
 int av_log (int ,scalar_t__,char*) ;

__attribute__((used)) static int check_header_fi_mismatch(FLACParseContext *fpc,
                                    FLACFrameInfo *header_fi,
                                    FLACFrameInfo *child_fi,
                                    int log_level_offset)
{
    int deduction = 0;
    if (child_fi->samplerate != header_fi->samplerate) {
        deduction += FLAC_HEADER_CHANGED_PENALTY;
        av_log(fpc->avctx, AV_LOG_WARNING + log_level_offset,
               "sample rate change detected in adjacent frames\n");
    }
    if (child_fi->bps != header_fi->bps) {
        deduction += FLAC_HEADER_CHANGED_PENALTY;
        av_log(fpc->avctx, AV_LOG_WARNING + log_level_offset,
               "bits per sample change detected in adjacent frames\n");
    }
    if (child_fi->is_var_size != header_fi->is_var_size) {

        deduction += FLAC_HEADER_BASE_SCORE;
        av_log(fpc->avctx, AV_LOG_WARNING + log_level_offset,
               "blocking strategy change detected in adjacent frames\n");
    }
    if (child_fi->channels != header_fi->channels) {
        deduction += FLAC_HEADER_CHANGED_PENALTY;
        av_log(fpc->avctx, AV_LOG_WARNING + log_level_offset,
               "number of channels change detected in adjacent frames\n");
    }
    return deduction;
}
