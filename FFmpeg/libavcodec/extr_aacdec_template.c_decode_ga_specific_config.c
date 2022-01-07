
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int warned_960_sbr; } ;
struct TYPE_7__ {int frame_length_short; int sbr; int ps; int object_type; } ;
typedef TYPE_1__ MPEG4AudioConfig ;
typedef int GetBitContext ;
typedef int AVCodecContext ;
typedef TYPE_2__ AACContext ;


 int AOT_AAC_SCALABLE ;





 int AVERROR_PATCHWELCOME ;
 int MAX_ELEM_ID ;
 int OC_GLOBAL_HDR ;
 int avpriv_report_missing_feature (int *,char*,...) ;
 int count_channels (int **,int) ;
 int decode_pce (int *,TYPE_1__*,int **,int *,int) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int output_configure (TYPE_2__*,int **,int,int ,int ) ;
 int set_default_channel_config (int *,int **,int*,int) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int decode_ga_specific_config(AACContext *ac, AVCodecContext *avctx,
                                     GetBitContext *gb,
                                     int get_bit_alignment,
                                     MPEG4AudioConfig *m4ac,
                                     int channel_config)
{
    int extension_flag, ret, ep_config, res_flags;
    uint8_t layout_map[MAX_ELEM_ID*4][3];
    int tags = 0;
    m4ac->frame_length_short = get_bits1(gb);
    if (m4ac->frame_length_short && m4ac->sbr == 1) {
      avpriv_report_missing_feature(avctx, "SBR with 960 frame length");
      if (ac) ac->warned_960_sbr = 1;
      m4ac->sbr = 0;
      m4ac->ps = 0;
    }


    if (get_bits1(gb))
        skip_bits(gb, 14);
    extension_flag = get_bits1(gb);

    if (m4ac->object_type == AOT_AAC_SCALABLE ||
        m4ac->object_type == 129)
        skip_bits(gb, 3);

    if (channel_config == 0) {
        skip_bits(gb, 4);
        tags = decode_pce(avctx, m4ac, layout_map, gb, get_bit_alignment);
        if (tags < 0)
            return tags;
    } else {
        if ((ret = set_default_channel_config(avctx, layout_map,
                                              &tags, channel_config)))
            return ret;
    }

    if (count_channels(layout_map, tags) > 1) {
        m4ac->ps = 0;
    } else if (m4ac->sbr == 1 && m4ac->ps == -1)
        m4ac->ps = 1;

    if (ac && (ret = output_configure(ac, layout_map, tags, OC_GLOBAL_HDR, 0)))
        return ret;

    if (extension_flag) {
        switch (m4ac->object_type) {
        case 128:
            skip_bits(gb, 5);
            skip_bits(gb, 11);
            break;
        case 132:
        case 130:
        case 129:
        case 131:
            res_flags = get_bits(gb, 3);
            if (res_flags) {
                avpriv_report_missing_feature(avctx,
                                              "AAC data resilience (flags %x)",
                                              res_flags);
                return AVERROR_PATCHWELCOME;
            }
            break;
        }
        skip_bits1(gb);
    }
    switch (m4ac->object_type) {
    case 132:
    case 130:
    case 129:
    case 131:
        ep_config = get_bits(gb, 2);
        if (ep_config) {
            avpriv_report_missing_feature(avctx,
                                          "epConfig %d", ep_config);
            return AVERROR_PATCHWELCOME;
        }
    }
    return 0;
}
