
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float VGfloat ;
typedef scalar_t__ FT_Pos ;



__attribute__((used)) static VGfloat float_from_26_6(FT_Pos x)
{
   return (VGfloat)x / 64.0f;
}
