
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ emu_get_save_fname (int,int ,int,int*) ;

int emu_check_save_file(int slot, int *time)
{
 return emu_get_save_fname(1, 0, slot, time) ? 1 : 0;
}
