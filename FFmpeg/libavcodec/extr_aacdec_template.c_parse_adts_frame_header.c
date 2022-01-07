
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int num_aac_frames; scalar_t__ chan_config; scalar_t__ sample_rate; int crc_absent; int object_type; int sampling_index; } ;
struct TYPE_11__ {int warned_num_aac_frames; TYPE_2__* oc; scalar_t__ dmono_mode; int avctx; } ;
struct TYPE_9__ {scalar_t__ chan_config; scalar_t__ sample_rate; int sbr; int ps; scalar_t__ frame_length_short; int object_type; int sampling_index; } ;
struct TYPE_10__ {scalar_t__ status; TYPE_1__ m4ac; } ;
typedef int GetBitContext ;
typedef TYPE_3__ AACContext ;
typedef TYPE_4__ AACADTSHeaderInfo ;


 int AAC_CHANNEL_FRONT ;
 int FFMAX (scalar_t__,int ) ;
 int MAX_ELEM_ID ;
 scalar_t__ OC_LOCKED ;
 scalar_t__ OC_NONE ;
 int OC_TRIAL_FRAME ;
 int TYPE_SCE ;
 int avpriv_report_missing_feature (int ,char*) ;
 int ff_adts_header_parse (int *,TYPE_4__*) ;
 int output_configure (TYPE_3__*,int**,int,int ,int ) ;
 int push_output_configuration (TYPE_3__*) ;
 int set_default_channel_config (int ,int**,int*,scalar_t__) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int parse_adts_frame_header(AACContext *ac, GetBitContext *gb)
{
    int size;
    AACADTSHeaderInfo hdr_info;
    uint8_t layout_map[MAX_ELEM_ID*4][3];
    int layout_map_tags, ret;

    size = ff_adts_header_parse(gb, &hdr_info);
    if (size > 0) {
        if (!ac->warned_num_aac_frames && hdr_info.num_aac_frames != 1) {


            avpriv_report_missing_feature(ac->avctx,
                                          "More than one AAC RDB per ADTS frame");
            ac->warned_num_aac_frames = 1;
        }
        push_output_configuration(ac);
        if (hdr_info.chan_config) {
            ac->oc[1].m4ac.chan_config = hdr_info.chan_config;
            if ((ret = set_default_channel_config(ac->avctx,
                                                  layout_map,
                                                  &layout_map_tags,
                                                  hdr_info.chan_config)) < 0)
                return ret;
            if ((ret = output_configure(ac, layout_map, layout_map_tags,
                                        FFMAX(ac->oc[1].status,
                                              OC_TRIAL_FRAME), 0)) < 0)
                return ret;
        } else {
            ac->oc[1].m4ac.chan_config = 0;





            if (ac->dmono_mode && ac->oc[0].status == OC_NONE) {
                layout_map_tags = 2;
                layout_map[0][0] = layout_map[1][0] = TYPE_SCE;
                layout_map[0][2] = layout_map[1][2] = AAC_CHANNEL_FRONT;
                layout_map[0][1] = 0;
                layout_map[1][1] = 1;
                if (output_configure(ac, layout_map, layout_map_tags,
                                     OC_TRIAL_FRAME, 0))
                    return -7;
            }
        }
        ac->oc[1].m4ac.sample_rate = hdr_info.sample_rate;
        ac->oc[1].m4ac.sampling_index = hdr_info.sampling_index;
        ac->oc[1].m4ac.object_type = hdr_info.object_type;
        ac->oc[1].m4ac.frame_length_short = 0;
        if (ac->oc[0].status != OC_LOCKED ||
            ac->oc[0].m4ac.chan_config != hdr_info.chan_config ||
            ac->oc[0].m4ac.sample_rate != hdr_info.sample_rate) {
            ac->oc[1].m4ac.sbr = -1;
            ac->oc[1].m4ac.ps = -1;
        }
        if (!hdr_info.crc_absent)
            skip_bits(gb, 16);
    }
    return size;
}
