
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int P0 ;
 int P1 ;
 int Q0 ;
 int Q1 ;
 int abs (int) ;
 int av_clip (int,int,int) ;
 int av_clip_uint8 (int) ;

__attribute__((used)) static inline void loop_filter_c1(uint8_t *p0_p, ptrdiff_t stride, int alpha, int beta,
                                  int tc)
{
    if(abs(P0-Q0)<alpha && abs(P1-P0)<beta && abs(Q1-Q0)<beta) {
        int delta = av_clip(((Q0-P0)*3+P1-Q1+4)>>3, -tc, tc);
        P0 = av_clip_uint8(P0+delta);
        Q0 = av_clip_uint8(Q0-delta);
    }
}
