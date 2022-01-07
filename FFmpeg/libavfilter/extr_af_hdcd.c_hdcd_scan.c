
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {unsigned int sustain; int sustain_reset; int count_sustain_expired; scalar_t__ control; } ;
typedef TYPE_1__ hdcd_state ;
typedef int cdt_active ;
typedef int HDCDContext ;


 int HDCD_MAX_CHANNELS ;
 int hdcd_integrate (int *,TYPE_1__*,int,int*,int const*,int,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int hdcd_scan(HDCDContext *ctx, hdcd_state *states, int channels, const int32_t *samples, int max, int stride)
{
    int result;
    int i;
    int cdt_active[HDCD_MAX_CHANNELS];
    memset(cdt_active, 0, sizeof(cdt_active));

    if (stride < channels) stride = channels;


    for(i = 0; i < channels; i++) {
        if (states[i].sustain > 0) {
            cdt_active[i] = 1;
            if (states[i].sustain <= (unsigned)max) {
                states[i].control = 0;
                max = states[i].sustain;
            }
            states[i].sustain -= max;
        }
    }

    result = 0;
    while (result < max) {
        int flag;
        int consumed = hdcd_integrate(ctx, states, channels, &flag, samples, max - result, stride);
        result += consumed;
        if (flag) {

            for(i = 0; i < channels; i++) {
                if (flag & (1<<i)) {
                    states[i].sustain = states[i].sustain_reset;


                    if (states[i].count_sustain_expired == -1)
                        states[i].count_sustain_expired = 0;
                }
            }
            break;
        }
        samples += consumed * stride;
    }

    for(i = 0; i < channels; i++) {

        if (cdt_active[i] && states[i].sustain == 0)
            states[i].count_sustain_expired++;
    }

    return result;
}
