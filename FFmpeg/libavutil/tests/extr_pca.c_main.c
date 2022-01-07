
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int v ;
struct TYPE_5__ {int count; double* covariance; scalar_t__* mean; } ;
typedef TYPE_1__ PCA ;
typedef int AVLFG ;


 int FFMAX (int,int) ;
 int FFMIN (int,int) ;
 int LEN ;
 int av_lfg_get (int *) ;
 int av_lfg_init (int *,int) ;
 scalar_t__ fabs (double) ;
 int ff_pca (TYPE_1__*,double*,double*) ;
 int ff_pca_add (TYPE_1__*,double*) ;
 TYPE_1__* ff_pca_init (int) ;
 int memset (double*,int ,int) ;
 int printf (char*,...) ;

int main(void){
    PCA *pca;
    int i, j, k;

    double eigenvector[8*8];
    double eigenvalue[8];
    AVLFG prng;

    av_lfg_init(&prng, 1);

    pca= ff_pca_init(8);

    for(i=0; i<9000000; i++){
        double v[2*8 +100];
        double sum=0;
        int pos = av_lfg_get(&prng) % 8;
        int v2 = av_lfg_get(&prng) % 101 - 50;
        v[0] = av_lfg_get(&prng) % 101 - 50;
        for(j=1; j<8; j++){
            if(j<=pos) v[j]= v[0];
            else v[j]= v2;
            sum += v[j];
        }
        ff_pca_add(pca, v);
    }


    ff_pca(pca, eigenvector, eigenvalue);
    for(i=0; i<8; i++){
        pca->count= 1;
        pca->mean[i]= 0;





        for(j=i; j<8; j++){
            printf("%f ", pca->covariance[i + j*8]);
        }
        printf("\n");
    }

    for(i=0; i<8; i++){
        double v[8];
        double error=0;
        memset(v, 0, sizeof(v));
        for(j=0; j<8; j++){
            for(k=0; k<8; k++){
                v[j] += pca->covariance[FFMIN(k,j) + FFMAX(k,j)*8] * eigenvector[i + k*8];
            }
            v[j] /= eigenvalue[i];
            error += fabs(v[j] - eigenvector[i + j*8]);
        }
        printf("%f ", error);
    }
    printf("\n");

    for(i=0; i<8; i++){
        for(j=0; j<8; j++){
            printf("%9.6f ", eigenvector[i + j*8]);
        }
        printf("  %9.1f %f\n", eigenvalue[i], eigenvalue[i]/eigenvalue[0]);
    }

    return 0;
}
