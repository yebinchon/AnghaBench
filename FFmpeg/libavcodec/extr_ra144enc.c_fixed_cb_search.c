
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cba_vect ;
typedef int cb1_vect ;


 int BLOCKSIZE ;
 int LPC_ORDER ;
 float** ff_cb1_vects ;
 float** ff_cb2_vects ;
 int ff_celp_lp_synthesis_filterf (float*,float const*,float*,int,int ) ;
 int find_best_vect (float*,float const*,float**,float*,float*,float*,int*,float*) ;
 int memcpy (float*,float*,int) ;
 int orthogonalize (float*,float*) ;

__attribute__((used)) static void fixed_cb_search(float *work, const float *coefs, float *data,
                            int cba_idx, int *cb1_idx, int *cb2_idx)
{
    int i, ortho_cb1;
    float gain;
    float cba_vect[BLOCKSIZE], cb1_vect[BLOCKSIZE];
    float vect[BLOCKSIZE];





    if (cba_idx)
        memcpy(cba_vect, work, sizeof(cba_vect));

    find_best_vect(work, coefs, ff_cb1_vects, cba_idx ? cba_vect : ((void*)0), ((void*)0),
                   data, cb1_idx, &gain);





    if (gain) {
        for (i = 0; i < BLOCKSIZE; i++)
            vect[i] = ff_cb1_vects[*cb1_idx][i];
        ff_celp_lp_synthesis_filterf(work, coefs, vect, BLOCKSIZE, LPC_ORDER);
        if (cba_idx)
            orthogonalize(work, cba_vect);
        for (i = 0; i < BLOCKSIZE; i++)
            data[i] -= gain * work[i];
        memcpy(cb1_vect, work, sizeof(cb1_vect));
        ortho_cb1 = 1;
    } else
        ortho_cb1 = 0;

    find_best_vect(work, coefs, ff_cb2_vects, cba_idx ? cba_vect : ((void*)0),
                   ortho_cb1 ? cb1_vect : ((void*)0), data, cb2_idx, &gain);
}
