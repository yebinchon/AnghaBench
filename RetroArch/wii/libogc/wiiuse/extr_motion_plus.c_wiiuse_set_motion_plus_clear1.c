
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uword ;
typedef int ubyte ;
struct wiimote_t {int dummy; } ;


 int WM_EXP_MEM_ENABLE1 ;
 int wiiuse_set_motion_plus_clear2 ;
 int wiiuse_write_data (struct wiimote_t*,int ,int*,int,int ) ;

__attribute__((used)) static void wiiuse_set_motion_plus_clear1(struct wiimote_t *wm,ubyte *data,uword len)
{
 ubyte val = 0x00;
 wiiuse_write_data(wm,WM_EXP_MEM_ENABLE1,&val,1,wiiuse_set_motion_plus_clear2);
}
