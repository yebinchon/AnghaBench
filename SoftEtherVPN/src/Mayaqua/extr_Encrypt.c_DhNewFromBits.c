
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DH_CTX ;


 int * DhNew2048 () ;
 int * DhNew3072 () ;
 int * DhNew4096 () ;
 int * DhNewGroup1 () ;
 int * DhNewGroup2 () ;
 int * DhNewGroup5 () ;
 int * DhNewSimple160 () ;

DH_CTX *DhNewFromBits(UINT bits)
{
 switch (bits)
 {
 case 160:
  return DhNewSimple160();
 case 768:
  return DhNewGroup1();
 case 1024:
  return DhNewGroup2();
 case 1536:
  return DhNewGroup5();
 case 2048:
  return DhNew2048();
 case 3072:
  return DhNew3072();
 case 4096:
  return DhNew4096();
 default:
  return DhNew2048();
 }
}
