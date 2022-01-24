#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  enum RawDataBlockType { ____Placeholder_RawDataBlockType } RawDataBlockType ;
typedef  enum ChannelPosition { ____Placeholder_ChannelPosition } ChannelPosition ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
#define  AAC_CHANNEL_BACK 132 
#define  AAC_CHANNEL_CC 131 
#define  AAC_CHANNEL_FRONT 130 
#define  AAC_CHANNEL_LFE 129 
#define  AAC_CHANNEL_SIDE 128 
 int TYPE_CCE ; 
 int TYPE_LFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(uint8_t layout_map[][3],
                               enum ChannelPosition type,
                               GetBitContext *gb, int n)
{
    while (n--) {
        enum RawDataBlockType syn_ele;
        switch (type) {
        case AAC_CHANNEL_FRONT:
        case AAC_CHANNEL_BACK:
        case AAC_CHANNEL_SIDE:
            syn_ele = FUNC2(gb);
            break;
        case AAC_CHANNEL_CC:
            FUNC3(gb);
            syn_ele = TYPE_CCE;
            break;
        case AAC_CHANNEL_LFE:
            syn_ele = TYPE_LFE;
            break;
        default:
            // AAC_CHANNEL_OFF has no channel map
            FUNC0(0);
        }
        layout_map[0][0] = syn_ele;
        layout_map[0][1] = FUNC1(gb, 4);
        layout_map[0][2] = type;
        layout_map++;
    }
}