
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int left; int right; int top; int bottom; } ;


 TYPE_1__ EmuScreenRect ;
 int FrameWnd ;
 int PostMessage (int ,int ,int,int ) ;
 int WM_COMMAND ;

void emu_video_mode_change(int start_line, int line_count, int is_32cols)
{
 EmuScreenRect.left = is_32cols ? 32 : 0;
 EmuScreenRect.right = is_32cols ? 256+32 : 320;
 EmuScreenRect.top = start_line;
 EmuScreenRect.bottom = start_line + line_count;

 PostMessage(FrameWnd, WM_COMMAND, 0x20000 | 2000, 0);
}
