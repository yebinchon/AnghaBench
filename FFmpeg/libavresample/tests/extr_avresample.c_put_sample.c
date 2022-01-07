
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;







 int av_get_packed_sample_fmt (int) ;
 int put_sample_dbl (void**,int,int,int,int,double) ;
 int put_sample_flt (void**,int,int,int,int,double) ;
 int put_sample_s16 (void**,int,int,int,int,double) ;
 int put_sample_s32 (void**,int,int,int,int,double) ;
 int put_sample_u8 (void**,int,int,int,int,double) ;

__attribute__((used)) static void put_sample(void **data, enum AVSampleFormat sample_fmt,
                       int channels, int sample, int ch, double v_dbl)
{
    switch (av_get_packed_sample_fmt(sample_fmt)) {
    case 128:
        put_sample_u8(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    case 130:
        put_sample_s16(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    case 129:
        put_sample_s32(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    case 131:
        put_sample_flt(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    case 132:
        put_sample_dbl(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    }
}
