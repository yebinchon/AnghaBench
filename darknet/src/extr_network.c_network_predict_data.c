
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int outputs; int batch; } ;
typedef TYPE_2__ network ;
struct TYPE_12__ {float** vals; } ;
typedef TYPE_3__ matrix ;
struct TYPE_10__ {int rows; int cols; int * vals; } ;
struct TYPE_13__ {TYPE_1__ X; } ;
typedef TYPE_4__ data ;


 float* calloc (int,int) ;
 int free (float*) ;
 TYPE_3__ make_matrix (int,int) ;
 int memcpy (float*,int ,int) ;
 float* network_predict (TYPE_2__*,float*) ;

matrix network_predict_data(network *net, data test)
{
    int i,j,b;
    int k = net->outputs;
    matrix pred = make_matrix(test.X.rows, k);
    float *X = calloc(net->batch*test.X.cols, sizeof(float));
    for(i = 0; i < test.X.rows; i += net->batch){
        for(b = 0; b < net->batch; ++b){
            if(i+b == test.X.rows) break;
            memcpy(X+b*test.X.cols, test.X.vals[i+b], test.X.cols*sizeof(float));
        }
        float *out = network_predict(net, X);
        for(b = 0; b < net->batch; ++b){
            if(i+b == test.X.rows) break;
            for(j = 0; j < k; ++j){
                pred.vals[i+b][j] = out[j+b*k];
            }
        }
    }
    free(X);
    return pred;
}
