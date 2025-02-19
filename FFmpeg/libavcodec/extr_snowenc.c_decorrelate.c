
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; } ;
typedef TYPE_1__ SubBand ;
typedef int SnowContext ;
typedef scalar_t__ IDWTELEM ;


 scalar_t__ mid_pred (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void decorrelate(SnowContext *s, SubBand *b, IDWTELEM *src, int stride, int inverse, int use_median){
    const int w= b->width;
    const int h= b->height;
    int x,y;

    for(y=h-1; y>=0; y--){
        for(x=w-1; x>=0; x--){
            int i= x + y*stride;

            if(x){
                if(use_median){
                    if(y && x+1<w) src[i] -= mid_pred(src[i - 1], src[i - stride], src[i - stride + 1]);
                    else src[i] -= src[i - 1];
                }else{
                    if(y) src[i] -= mid_pred(src[i - 1], src[i - stride], src[i - 1] + src[i - stride] - src[i - 1 - stride]);
                    else src[i] -= src[i - 1];
                }
            }else{
                if(y) src[i] -= src[i - stride];
            }
        }
    }
}
