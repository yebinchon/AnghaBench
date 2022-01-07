
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int int32_t ;
typedef int WvChannel ;
typedef int WavPackEncodeContext ;


 int DEC_MED (int) ;
 scalar_t__ GET_MED (int) ;
 int INC_MED (int) ;
 scalar_t__ labs (int ) ;

__attribute__((used)) static void scan_word(WavPackEncodeContext *s, WvChannel *c,
                      int32_t *samples, int nb_samples, int dir)
{
    if (dir < 0)
        samples += nb_samples - 1;

    while (nb_samples--) {
        uint32_t low, value = labs(samples[0]);

        if (value < GET_MED(0)) {
            DEC_MED(0);
        } else {
            low = GET_MED(0);
            INC_MED(0);

            if (value - low < GET_MED(1)) {
                DEC_MED(1);
            } else {
                low += GET_MED(1);
                INC_MED(1);

                if (value - low < GET_MED(2)) {
                    DEC_MED(2);
                } else {
                    INC_MED(2);
                }
            }
        }
        samples += dir;
    }
}
