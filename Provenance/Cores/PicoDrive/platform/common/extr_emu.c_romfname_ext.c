
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fname_ext (char*,int,char const*,char const*,int ) ;
 int rom_fname_loaded ;

__attribute__((used)) static void romfname_ext(char *dst, int dstlen, const char *prefix, const char *ext)
{
 fname_ext(dst, dstlen, prefix, ext, rom_fname_loaded);
}
