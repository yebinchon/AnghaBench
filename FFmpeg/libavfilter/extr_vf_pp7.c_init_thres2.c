
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** thres2; } ;
typedef TYPE_1__ PP7Context ;


 int FFMAX (int,int) ;
 int SN0 ;
 int SN2 ;

__attribute__((used)) static void init_thres2(PP7Context *p)
{
    int qp, i;
    int bias = 0;

    for (qp = 0; qp < 99; qp++) {
        for (i = 0; i < 16; i++) {
            p->thres2[qp][i] = ((i&1) ? SN2 : SN0) * ((i&4) ? SN2 : SN0) * FFMAX(1, qp) * (1<<2) - 1 - bias;
        }
    }
}
