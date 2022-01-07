
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; int mb_size; TYPE_1__* tiles; } ;
struct TYPE_5__ {int xpos; int ypos; scalar_t__ num_MBs; scalar_t__ mbs; scalar_t__ ref_mbs; void* height; void* width; scalar_t__ data_size; scalar_t__ is_empty; int mb_size; } ;
typedef TYPE_1__ IVITile ;
typedef int IVIMbInfo ;
typedef TYPE_2__ IVIBandDesc ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int ENOMEM ;
 void* FFMIN (int,int) ;
 scalar_t__ IVI_MBs_PER_TILE (void*,void*,int ) ;
 int av_freep (scalar_t__*) ;
 int av_log (int *,int ,char*) ;
 scalar_t__ av_mallocz_array (scalar_t__,int) ;

__attribute__((used)) static int ivi_init_tiles(const IVIBandDesc *band, IVITile *ref_tile,
                          int p, int b, int t_height, int t_width)
{
    int x, y;
    IVITile *tile = band->tiles;

    for (y = 0; y < band->height; y += t_height) {
        for (x = 0; x < band->width; x += t_width) {
            tile->xpos = x;
            tile->ypos = y;
            tile->mb_size = band->mb_size;
            tile->width = FFMIN(band->width - x, t_width);
            tile->height = FFMIN(band->height - y, t_height);
            tile->is_empty = tile->data_size = 0;

            tile->num_MBs = IVI_MBs_PER_TILE(tile->width, tile->height,
                                              band->mb_size);

            av_freep(&tile->mbs);
            tile->mbs = av_mallocz_array(tile->num_MBs, sizeof(IVIMbInfo));
            if (!tile->mbs)
                return AVERROR(ENOMEM);

            tile->ref_mbs = 0;
            if (p || b) {
                if (tile->num_MBs != ref_tile->num_MBs) {
                    av_log(((void*)0), AV_LOG_DEBUG, "ref_tile mismatch\n");
                    return AVERROR_INVALIDDATA;
                }
                tile->ref_mbs = ref_tile->mbs;
                ref_tile++;
            }
            tile++;
        }
    }

    return 0;
}
