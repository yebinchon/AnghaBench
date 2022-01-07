
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;







__attribute__((used)) static int btc_a2dp_sink_get_track_channel_count(UINT8 channeltype)
{
    int count = 1;
    switch (channeltype) {
    case 129:
        count = 1;
        break;
    case 131:
    case 128:
    case 130:
        count = 2;
        break;
    }
    return count;
}
