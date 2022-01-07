
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int * _peReg ;

void GX_ReadBoundingBox(u16 *top,u16 *bottom,u16 *left,u16 *right)
{
 *left = _peReg[8];
 *right = _peReg[9];
 *top = _peReg[10];
 *bottom = _peReg[11];
}
