
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACTIVATION ;
 float elu_gradient (float) ;
 float hardtan_gradient (float) ;
 float leaky_gradient (float) ;
 float lhtan_gradient (float) ;
 float linear_gradient (float) ;
 float loggy_gradient (float) ;
 float logistic_gradient (float) ;
 float plse_gradient (float) ;
 float ramp_gradient (float) ;
 float relie_gradient (float) ;
 float relu_gradient (float) ;
 float selu_gradient (float) ;
 float stair_gradient (float) ;
 float tanh_gradient (float) ;

float gradient(float x, ACTIVATION a)
{
    switch(a){
        case 137:
            return linear_gradient(x);
        case 135:
            return logistic_gradient(x);
        case 136:
            return loggy_gradient(x);
        case 131:
            return relu_gradient(x);
        case 141:
            return elu_gradient(x);
        case 130:
            return selu_gradient(x);
        case 132:
            return relie_gradient(x);
        case 133:
            return ramp_gradient(x);
        case 139:
            return leaky_gradient(x);
        case 128:
            return tanh_gradient(x);
        case 134:
            return plse_gradient(x);
        case 129:
            return stair_gradient(x);
        case 140:
            return hardtan_gradient(x);
        case 138:
            return lhtan_gradient(x);
    }
    return 0;
}
