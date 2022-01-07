
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_read_config (char const*,int ) ;

__attribute__((used)) static void do_region_override(const char *media_fname)
{

 int ret = emu_read_config(media_fname, 0);
 if (!ret) emu_read_config(((void*)0), 0);
}
