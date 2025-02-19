
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* premultiplied_coeffs ;
typedef int int32_t ;


 int DCA_ADPCM_COEFFS ;
 int DCA_ADPCM_VQCODEBOOK_SZ ;
 scalar_t__** ff_dca_adpcm_vb ;

__attribute__((used)) static void precalc(premultiplied_coeffs *data)
{
    int i, j, k;

    for (i = 0; i < DCA_ADPCM_VQCODEBOOK_SZ; i++) {
        int id = 0;
        int32_t t = 0;
        for (j = 0; j < DCA_ADPCM_COEFFS; j++) {
            for (k = j; k < DCA_ADPCM_COEFFS; k++) {
                t = (int32_t)ff_dca_adpcm_vb[i][j] * (int32_t)ff_dca_adpcm_vb[i][k];
                if (j != k)
                    t *= 2;
                (*data)[id++] = t;
             }
        }
        data++;
    }
}
