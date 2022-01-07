
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int* UID ;
struct TYPE_3__ {size_t wrapping_indicator_pos; int wrapping_indicator_type; int * uid; } ;
typedef int MXFWrappingScheme ;
typedef TYPE_1__ MXFCodecUL ;


 int ClipWrapped ;

 int FrameWrapped ;


 int UnknownWrapped ;
 int mxf_data_essence_container_uls ;
 TYPE_1__* mxf_get_codec_ul (int ,int**) ;
 int mxf_picture_essence_container_uls ;
 int mxf_sound_essence_container_uls ;

__attribute__((used)) static MXFWrappingScheme mxf_get_wrapping_kind(UID *essence_container_ul)
{
    int val;
    const MXFCodecUL *codec_ul;

    codec_ul = mxf_get_codec_ul(mxf_picture_essence_container_uls, essence_container_ul);
    if (!codec_ul->uid[0])
        codec_ul = mxf_get_codec_ul(mxf_sound_essence_container_uls, essence_container_ul);
    if (!codec_ul->uid[0])
        codec_ul = mxf_get_codec_ul(mxf_data_essence_container_uls, essence_container_ul);
    if (!codec_ul->uid[0] || !codec_ul->wrapping_indicator_pos)
        return UnknownWrapped;

    val = (*essence_container_ul)[codec_ul->wrapping_indicator_pos];
    switch (codec_ul->wrapping_indicator_type) {
        case 128:
            val = val % 4;
            break;
        case 129:
            if (val == 0x03 || val == 0x04)
                val -= 0x02;
            break;
        case 130:
            if (val == 0x02)
                val = 0x01;
            break;
    }
    if (val == 0x01)
        return FrameWrapped;
    if (val == 0x02)
        return ClipWrapped;
    return UnknownWrapped;
}
