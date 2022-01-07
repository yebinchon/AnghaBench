
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float log (float) ;

float logit(float x)
{
    return log(x/(1.-x));
}
