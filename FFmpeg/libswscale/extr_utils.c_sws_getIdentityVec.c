
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SwsVector ;


 int * sws_getConstVec (double,int) ;

SwsVector *sws_getIdentityVec(void)
{
    return sws_getConstVec(1.0, 1);
}
