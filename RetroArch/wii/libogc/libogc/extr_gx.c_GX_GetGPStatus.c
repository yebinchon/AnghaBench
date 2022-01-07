
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* _cpReg ;
 int _gxgpstatus ;

void GX_GetGPStatus(u8 *overhi,u8 *underlow,u8 *readIdle,u8 *cmdIdle,u8 *brkpt)
{
 _gxgpstatus = _cpReg[0];
 *overhi = !!(_gxgpstatus&1);
 *underlow = !!(_gxgpstatus&2);
 *readIdle = !!(_gxgpstatus&4);
 *cmdIdle = !!(_gxgpstatus&8);
 *brkpt = !!(_gxgpstatus&16);
}
