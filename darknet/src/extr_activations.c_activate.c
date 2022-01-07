
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACTIVATION ;
 float elu_activate (float) ;
 float hardtan_activate (float) ;
 float leaky_activate (float) ;
 float lhtan_activate (float) ;
 float linear_activate (float) ;
 float loggy_activate (float) ;
 float logistic_activate (float) ;
 float plse_activate (float) ;
 float ramp_activate (float) ;
 float relie_activate (float) ;
 float relu_activate (float) ;
 float selu_activate (float) ;
 float stair_activate (float) ;
 float tanh_activate (float) ;

float activate(float x, ACTIVATION a)
{
    switch(a){
        case 137:
            return linear_activate(x);
        case 135:
            return logistic_activate(x);
        case 136:
            return loggy_activate(x);
        case 131:
            return relu_activate(x);
        case 141:
            return elu_activate(x);
        case 130:
            return selu_activate(x);
        case 132:
            return relie_activate(x);
        case 133:
            return ramp_activate(x);
        case 139:
            return leaky_activate(x);
        case 128:
            return tanh_activate(x);
        case 134:
            return plse_activate(x);
        case 129:
            return stair_activate(x);
        case 140:
            return hardtan_activate(x);
        case 138:
            return lhtan_activate(x);
    }
    return 0;
}
