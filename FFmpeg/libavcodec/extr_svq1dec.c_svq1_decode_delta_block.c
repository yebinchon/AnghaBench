
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ svq1_pmv ;
typedef int ptrdiff_t ;
struct TYPE_7__ {int table; } ;
typedef int HpelDSPContext ;
typedef int GetBitContext ;
typedef int AVCodecContext ;






 int ff_dlog (int *,char*,int) ;
 int get_vlc2 (int *,int ,int,int) ;
 TYPE_5__ svq1_block_type ;
 int svq1_decode_block_intra (int *,int *,int ) ;
 int svq1_decode_block_non_intra (int *,int *,int ) ;
 int svq1_motion_inter_4v_block (int *,int *,int *,int *,int ,TYPE_1__*,int,int,int,int) ;
 int svq1_motion_inter_block (int *,int *,int *,int *,int ,TYPE_1__*,int,int,int,int) ;
 int svq1_skip_block (int *,int *,int ,int,int) ;

__attribute__((used)) static int svq1_decode_delta_block(AVCodecContext *avctx, HpelDSPContext *hdsp,
                                   GetBitContext *bitbuf,
                                   uint8_t *current, uint8_t *previous,
                                   ptrdiff_t pitch, svq1_pmv *motion, int x, int y,
                                   int width, int height)
{
    uint32_t block_type;
    int result = 0;


    block_type = get_vlc2(bitbuf, svq1_block_type.table, 2, 2);


    if (block_type == 128 || block_type == 129) {
        motion[0].x =
        motion[0].y =
        motion[x / 8 + 2].x =
        motion[x / 8 + 2].y =
        motion[x / 8 + 3].x =
        motion[x / 8 + 3].y = 0;
    }

    switch (block_type) {
    case 128:
        svq1_skip_block(current, previous, pitch, x, y);
        break;

    case 131:
        result = svq1_motion_inter_block(hdsp, bitbuf, current, previous,
                                         pitch, motion, x, y, width, height);

        if (result != 0) {
            ff_dlog(avctx, "Error in svq1_motion_inter_block %i\n", result);
            break;
        }
        result = svq1_decode_block_non_intra(bitbuf, current, pitch);
        break;

    case 130:
        result = svq1_motion_inter_4v_block(hdsp, bitbuf, current, previous,
                                            pitch, motion, x, y, width, height);

        if (result != 0) {
            ff_dlog(avctx, "Error in svq1_motion_inter_4v_block %i\n", result);
            break;
        }
        result = svq1_decode_block_non_intra(bitbuf, current, pitch);
        break;

    case 129:
        result = svq1_decode_block_intra(bitbuf, current, pitch);
        break;
    }

    return result;
}
