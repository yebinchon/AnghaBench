
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_int16_t ;


 int av_clip_int16 (float) ;

__attribute__((used)) static inline int conv(int samples, float **pcm, char *buf, int channels) {
    int i, j;
    ogg_int16_t *ptr, *data = (ogg_int16_t*)buf ;
    float *mono ;

    for(i = 0 ; i < channels ; i++){
        ptr = &data[i];
        mono = pcm[i] ;

        for(j = 0 ; j < samples ; j++) {
            *ptr = av_clip_int16(mono[j] * 32767.f);
            ptr += channels;
        }
    }

    return 0 ;
}
