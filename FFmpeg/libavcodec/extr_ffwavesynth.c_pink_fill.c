
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wavesynth_context {int* pink_pool; int pink_state; int pink_need; scalar_t__ pink_pos; } ;
typedef int int32_t ;


 int PINK_UNIT ;
 scalar_t__ lcg_next (int *) ;

__attribute__((used)) static void pink_fill(struct wavesynth_context *ws)
{
    int32_t vt[7] = { 0 }, v = 0;
    int i, j;

    ws->pink_pos = 0;
    if (!ws->pink_need)
        return;
    for (i = 0; i < PINK_UNIT; i++) {
        for (j = 0; j < 7; j++) {
            if ((i >> j) & 1)
                break;
            v -= vt[j];
            vt[j] = (int32_t)lcg_next(&ws->pink_state) >> 3;
            v += vt[j];
        }
        ws->pink_pool[i] = v + ((int32_t)lcg_next(&ws->pink_state) >> 3);
    }
    lcg_next(&ws->pink_state);
}
