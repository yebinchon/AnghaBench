
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LAYER_TYPE ;
char *get_layer_string(LAYER_TYPE a)
{
    switch(a){
        case 146:
            return "convolutional";
        case 150:
            return "activation";
        case 138:
            return "local";
        case 142:
            return "deconvolutional";
        case 147:
            return "connected";
        case 132:
            return "rnn";
        case 139:
            return "gru";
        case 137:
     return "lstm";
        case 144:
            return "crnn";
        case 136:
            return "maxpool";
        case 133:
            return "reorg";
        case 149:
            return "avgpool";
        case 129:
            return "softmax";
        case 141:
            return "detection";
        case 134:
            return "region";
        case 128:
            return "yolo";
        case 140:
            return "dropout";
        case 143:
            return "crop";
        case 145:
            return "cost";
        case 131:
            return "route";
        case 130:
            return "shortcut";
        case 135:
            return "normalization";
        case 148:
            return "batchnorm";
        default:
            break;
    }
    return "none";
}
