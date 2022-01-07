
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACTIVATION ;
char *get_activation_string(ACTIVATION a)
{
    switch(a){
        case 135:
            return "logistic";
        case 136:
            return "loggy";
        case 131:
            return "relu";
        case 141:
            return "elu";
        case 130:
            return "selu";
        case 132:
            return "relie";
        case 133:
            return "ramp";
        case 137:
            return "linear";
        case 128:
            return "tanh";
        case 134:
            return "plse";
        case 139:
            return "leaky";
        case 129:
            return "stair";
        case 140:
            return "hardtan";
        case 138:
            return "lhtan";
        default:
            break;
    }
    return "relu";
}
