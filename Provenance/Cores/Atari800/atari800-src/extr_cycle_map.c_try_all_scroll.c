
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CYCLE_MAP_SIZE ;
 int antic_steal_map (int,int,int,int,int,int,char*,int*,int*) ;

__attribute__((used)) static void try_all_scroll(int md, int use_char_index,
 int use_font, int use_bitmap, int *cpu2antic, int *antic2cpu)
{
 char antic_cycles[115];
 int width;
 int scroll_offset = 0;
 width = 1;
 antic_steal_map(width, md, scroll_offset, use_char_index, use_font,
  use_bitmap, antic_cycles, &cpu2antic[CYCLE_MAP_SIZE * 0], &antic2cpu[CYCLE_MAP_SIZE * 0]);
 width = 2;
 for (scroll_offset = 0; scroll_offset <= 7; scroll_offset++) {
  antic_steal_map(width, md, scroll_offset, use_char_index, use_font,
   use_bitmap, antic_cycles, &cpu2antic[CYCLE_MAP_SIZE * (1 + scroll_offset)],
   &antic2cpu[CYCLE_MAP_SIZE * (1 + scroll_offset)]);
 }
 width = 3;
 for (scroll_offset = 0; scroll_offset <= 7; scroll_offset++) {
  antic_steal_map(width, md, scroll_offset, use_char_index, use_font,
   use_bitmap, antic_cycles, &cpu2antic[CYCLE_MAP_SIZE * (9 + scroll_offset)],
   &antic2cpu[CYCLE_MAP_SIZE * (9 + scroll_offset)]);
 }
}
