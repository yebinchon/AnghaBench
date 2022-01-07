
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH_CTX ;


 int DH_SET_3072 ;
 int * DhNew (int ,int) ;

DH_CTX *DhNew3072()
{
 return DhNew(DH_SET_3072, 2);
}
