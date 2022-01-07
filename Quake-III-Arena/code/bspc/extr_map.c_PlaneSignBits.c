
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;


 int Sign (int ) ;

int PlaneSignBits(vec3_t normal)
{
 int i, signbits;

 signbits = 0;
 for (i = 2; i >= 0; i--)
 {
  signbits = (signbits << 1) + Sign(normal[i]);
 }
 return signbits;
}
