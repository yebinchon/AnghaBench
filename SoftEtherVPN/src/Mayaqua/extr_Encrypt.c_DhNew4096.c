
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH_CTX ;


 int DH_SET_4096 ;
 int * DhNew (int ,int) ;

DH_CTX *DhNew4096()
{
 return DhNew(DH_SET_4096, 2);
}
