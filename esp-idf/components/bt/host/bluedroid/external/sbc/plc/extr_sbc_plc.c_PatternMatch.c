
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 float CrossCorrelation (int *,int *) ;
 size_t SBC_LHIST ;
 size_t SBC_M ;
 int SBC_N ;

__attribute__((used)) static int PatternMatch(int16_t *y){
    int n;
    float maxCn = -999999.0;
    float Cn;
    int bestmatch = 0;

    for (n = 0; n < SBC_N; n++){
        Cn = CrossCorrelation(&y[SBC_LHIST-SBC_M], &y[n]);
        if (Cn > maxCn){
            bestmatch = n;
            maxCn = Cn;
        }
    }
    return bestmatch;
}
