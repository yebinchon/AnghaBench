
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FF_LAMBDA_SHIFT ;

__attribute__((used)) static inline int get_penalty_factor(int lambda, int lambda2, int type){
    switch(type&0xFF){
    default:
    case 132:
        return lambda>>FF_LAMBDA_SHIFT;
    case 138:
        return (3*lambda)>>(FF_LAMBDA_SHIFT+1);
    case 129:
        return (4*lambda)>>(FF_LAMBDA_SHIFT);
    case 128:
        return (2*lambda)>>(FF_LAMBDA_SHIFT);
    case 131:
    case 137:
        return (2*lambda)>>FF_LAMBDA_SHIFT;
    case 133:
    case 134:
    case 130:
    case 135:
        return lambda2>>FF_LAMBDA_SHIFT;
    case 139:
    case 136:
        return 1;
    }
}
