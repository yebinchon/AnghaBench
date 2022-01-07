
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoDrawSetOutBuf (int ,int) ;
 int memset (int ,int ,int) ;
 int vout_buf ;
 int vout_height ;
 int vout_offset ;
 int vout_width ;

void emu_video_mode_change(int start_line, int line_count, int is_32cols)
{
 memset(vout_buf, 0, 320 * 240 * 2);
 vout_width = is_32cols ? 256 : 320;
 PicoDrawSetOutBuf(vout_buf, vout_width * 2);

 vout_height = line_count;
 vout_offset = vout_width * start_line;
}
