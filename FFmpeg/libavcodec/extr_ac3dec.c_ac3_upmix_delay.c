
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int channel_mode; int * delay; } ;
typedef TYPE_1__ AC3DecodeContext ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void ac3_upmix_delay(AC3DecodeContext *s)
{
    int channel_data_size = sizeof(s->delay[0]);
    switch (s->channel_mode) {
    case 129:
    case 128:

        memcpy(s->delay[1], s->delay[0], channel_data_size);
        break;
    case 133:
        memset(s->delay[3], 0, channel_data_size);
    case 134:
        memset(s->delay[2], 0, channel_data_size);
        break;
    case 130:
        memset(s->delay[4], 0, channel_data_size);
    case 131:
        memset(s->delay[3], 0, channel_data_size);
    case 132:
        memcpy(s->delay[2], s->delay[1], channel_data_size);
        memset(s->delay[1], 0, channel_data_size);
        break;
    }
}
