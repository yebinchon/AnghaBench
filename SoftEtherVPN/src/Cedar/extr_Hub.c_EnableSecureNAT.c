
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUB ;


 int EnableSecureNATEx (int *,int,int) ;

void EnableSecureNAT(HUB *h, bool enable)
{
 EnableSecureNATEx(h, enable, 0);
}
