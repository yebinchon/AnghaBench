
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float int16_t ;


 int SBC_M ;
 scalar_t__ SqrtByCarmack (float) ;

__attribute__((used)) static float CrossCorrelation(int16_t *x, int16_t *y){
    int m;
    float num = 0;
    float den = 0;
    float x2 = 0;
    float y2 = 0;

    for (m = 0; m < SBC_M; m++) {
        num += ((float)x[m]) * y[m];
        x2 += ((float)x[m]) * x[m];
        y2 += ((float)y[m]) * y[m];
    }
    den = (float)SqrtByCarmack(x2 * y2);
    return num / den;
}
