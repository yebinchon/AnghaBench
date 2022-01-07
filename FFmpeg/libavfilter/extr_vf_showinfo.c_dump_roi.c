
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int size; scalar_t__ data; } ;
struct TYPE_5__ {int den; int num; } ;
struct TYPE_6__ {int self_size; TYPE_1__ qoffset; int bottom; int right; int top; int left; } ;
typedef TYPE_2__ AVRegionOfInterest ;
typedef TYPE_3__ AVFrameSideData ;
typedef int AVFilterContext ;


 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int av_log (int *,int ,char*,...) ;

__attribute__((used)) static void dump_roi(AVFilterContext *ctx, AVFrameSideData *sd)
{
    int nb_rois;
    const AVRegionOfInterest *roi;
    uint32_t roi_size;

    roi = (const AVRegionOfInterest *)sd->data;
    roi_size = roi->self_size;
    if (!roi_size || sd->size % roi_size != 0) {
        av_log(ctx, AV_LOG_ERROR, "Invalid AVRegionOfInterest.self_size.");
        return;
    }
    nb_rois = sd->size / roi_size;

    av_log(ctx, AV_LOG_INFO, "Regions Of Interest(RoI) information: ");
    for (int i = 0; i < nb_rois; i++) {
        roi = (const AVRegionOfInterest *)(sd->data + roi_size * i);
        av_log(ctx, AV_LOG_INFO, "index: %d, region: (%d, %d)/(%d, %d), qp offset: %d/%d.\n",
               i, roi->left, roi->top, roi->right, roi->bottom, roi->qoffset.num, roi->qoffset.den);
    }
}
