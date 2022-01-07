
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int* delta_q; int rows; int cols; int* roi_map; } ;
typedef TYPE_2__ vpx_roi_map_t ;
typedef int uint32_t ;
struct TYPE_11__ {int size; scalar_t__ data; } ;
struct TYPE_8__ {float den; float num; } ;
struct TYPE_10__ {int self_size; int top; int bottom; int left; int right; TYPE_1__ qoffset; } ;
typedef TYPE_3__ AVRegionOfInterest ;
typedef TYPE_4__ AVFrameSideData ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int ENOMEM ;
 int MAX_DELTA_Q ;
 int av_clip (int,int,int) ;
 int av_log (int *,int ,char*,...) ;
 int* av_mallocz_array (int,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int set_roi_map(AVCodecContext *avctx, const AVFrameSideData *sd, int frame_width, int frame_height,
                       vpx_roi_map_t *roi_map, int block_size, int segment_cnt)
{





    const AVRegionOfInterest *roi = ((void*)0);
    int nb_rois;
    uint32_t self_size;
    int segment_id;







    int segment_mapping[2 * 63 + 1] = { 0 };

    memset(roi_map, 0, sizeof(*roi_map));





    segment_mapping[63] = 1;
    segment_id = 1;

    roi = (const AVRegionOfInterest*)sd->data;
    self_size = roi->self_size;
    if (!self_size || sd->size % self_size) {
        av_log(avctx, AV_LOG_ERROR, "Invalid AVRegionOfInterest.self_size.\n");
        return AVERROR(EINVAL);
    }
    nb_rois = sd->size / self_size;





    for (int i = 0; i < nb_rois; i++) {
        int delta_q;
        int mapping_index;

        roi = (const AVRegionOfInterest*)(sd->data + self_size * i);
        if (!roi->qoffset.den) {
            av_log(avctx, AV_LOG_ERROR, "AVRegionOfInterest.qoffset.den must not be zero.\n");
            return AVERROR(EINVAL);
        }

        delta_q = (int)(roi->qoffset.num * 1.0f / roi->qoffset.den * 63);
        delta_q = av_clip(delta_q, -63, 63);

        mapping_index = delta_q + 63;
        if (!segment_mapping[mapping_index]) {
            if (segment_id == segment_cnt) {
                av_log(avctx, AV_LOG_WARNING,
                       "ROI only supports %d segments (and segment 0 is reserved for non-ROIs), skipping the left ones.\n",
                       segment_cnt);
                break;
            }

            segment_mapping[mapping_index] = segment_id + 1;
            roi_map->delta_q[segment_id] = delta_q;
            segment_id++;
        }
    }

    roi_map->rows = (frame_height + block_size - 1) / block_size;
    roi_map->cols = (frame_width + block_size - 1) / block_size;
    roi_map->roi_map = av_mallocz_array(roi_map->rows * roi_map->cols, sizeof(*roi_map->roi_map));
    if (!roi_map->roi_map) {
        av_log(avctx, AV_LOG_ERROR, "roi_map alloc failed.\n");
        return AVERROR(ENOMEM);
    }




    for (int i = nb_rois - 1; i >= 0; i--) {
        int delta_q;
        int mapping_value;
        int starty, endy, startx, endx;

        roi = (const AVRegionOfInterest*)(sd->data + self_size * i);

        starty = av_clip(roi->top / block_size, 0, roi_map->rows);
        endy = av_clip((roi->bottom + block_size - 1) / block_size, 0, roi_map->rows);
        startx = av_clip(roi->left / block_size, 0, roi_map->cols);
        endx = av_clip((roi->right + block_size - 1) / block_size, 0, roi_map->cols);

        delta_q = (int)(roi->qoffset.num * 1.0f / roi->qoffset.den * 63);
        delta_q = av_clip(delta_q, -63, 63);

        mapping_value = segment_mapping[delta_q + 63];
        if (mapping_value) {
            for (int y = starty; y < endy; y++)
                for (int x = startx; x < endx; x++)
                    roi_map->roi_map[x + y * roi_map->cols] = mapping_value - 1;
        }
    }

    return 0;
}
