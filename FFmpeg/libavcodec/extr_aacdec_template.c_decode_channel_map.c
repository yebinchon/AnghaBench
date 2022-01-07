
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum RawDataBlockType { ____Placeholder_RawDataBlockType } RawDataBlockType ;
typedef enum ChannelPosition { ____Placeholder_ChannelPosition } ChannelPosition ;
typedef int GetBitContext ;







 int TYPE_CCE ;
 int TYPE_LFE ;
 int av_assert0 (int ) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static void decode_channel_map(uint8_t layout_map[][3],
                               enum ChannelPosition type,
                               GetBitContext *gb, int n)
{
    while (n--) {
        enum RawDataBlockType syn_ele;
        switch (type) {
        case 130:
        case 132:
        case 128:
            syn_ele = get_bits1(gb);
            break;
        case 131:
            skip_bits1(gb);
            syn_ele = TYPE_CCE;
            break;
        case 129:
            syn_ele = TYPE_LFE;
            break;
        default:

            av_assert0(0);
        }
        layout_map[0][0] = syn_ele;
        layout_map[0][1] = get_bits(gb, 4);
        layout_map[0][2] = type;
        layout_map++;
    }
}
