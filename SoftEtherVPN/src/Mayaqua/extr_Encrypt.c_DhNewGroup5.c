
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH_CTX ;


 int DH_GROUP5_PRIME_1536 ;
 int * DhNew (int ,int) ;

DH_CTX *DhNewGroup5()
{
 return DhNew(DH_GROUP5_PRIME_1536, 2);
}
