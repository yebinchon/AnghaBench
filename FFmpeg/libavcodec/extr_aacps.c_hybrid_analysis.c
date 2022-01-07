
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int in ;
struct TYPE_5__ {int (* hybrid_analysis_ileave ) (int ***,int ***,int,int) ;} ;
typedef TYPE_1__ PSDSPContext ;
typedef int INTFLOAT ;


 int f20_0_8 ;
 int f34_0_12 ;
 int f34_1_8 ;
 int f34_2_4 ;
 int g1_Q2 ;
 int hybrid2_re (int **,int ***,int ,int,int) ;
 int hybrid4_8_12_cx (TYPE_1__*,int **,int ***,int ,int,int) ;
 int hybrid6_cx (TYPE_1__*,int **,int ***,int ,int) ;
 int memcpy (int **,int **,int) ;
 int stub1 (int ***,int ***,int,int) ;
 int stub2 (int ***,int ***,int,int) ;

__attribute__((used)) static void hybrid_analysis(PSDSPContext *dsp, INTFLOAT out[91][32][2],
                            INTFLOAT in[5][44][2], INTFLOAT L[2][38][64],
                            int is34, int len)
{
    int i, j;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 38; j++) {
            in[i][j+6][0] = L[0][j][i];
            in[i][j+6][1] = L[1][j][i];
        }
    }
    if (is34) {
        hybrid4_8_12_cx(dsp, in[0], out, f34_0_12, 12, len);
        hybrid4_8_12_cx(dsp, in[1], out+12, f34_1_8, 8, len);
        hybrid4_8_12_cx(dsp, in[2], out+20, f34_2_4, 4, len);
        hybrid4_8_12_cx(dsp, in[3], out+24, f34_2_4, 4, len);
        hybrid4_8_12_cx(dsp, in[4], out+28, f34_2_4, 4, len);
        dsp->hybrid_analysis_ileave(out + 27, L, 5, len);
    } else {
        hybrid6_cx(dsp, in[0], out, f20_0_8, len);
        hybrid2_re(in[1], out+6, g1_Q2, len, 1);
        hybrid2_re(in[2], out+8, g1_Q2, len, 0);
        dsp->hybrid_analysis_ileave(out + 7, L, 3, len);
    }

    for (i = 0; i < 5; i++) {
        memcpy(in[i], in[i]+32, 6 * sizeof(in[i][0]));
    }
}
