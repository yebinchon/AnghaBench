
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int carthw_Xin1_write8 (int,int ) ;

__attribute__((used)) static void carthw_Xin1_reset(void)
{
 carthw_Xin1_write8(0xa13000, 0);
}
