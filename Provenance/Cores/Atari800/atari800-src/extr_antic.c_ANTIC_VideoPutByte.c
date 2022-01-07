
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int WRITE_VIDEO_BYTE (int *,int ) ;

void ANTIC_VideoPutByte(UBYTE *ptr, UBYTE val)
{
 WRITE_VIDEO_BYTE(ptr, val);
}
