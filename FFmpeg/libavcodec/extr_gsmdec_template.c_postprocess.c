
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int av_clip_int16 (int) ;
 int gsm_mult (int,int) ;

__attribute__((used)) static int postprocess(int16_t *data, int msr)
{
    int i;
    for (i = 0; i < 160; i++) {
        msr = av_clip_int16(data[i] + gsm_mult(msr, 28180));
        data[i] = av_clip_int16(msr * 2) & ~7;
    }
    return msr;
}
