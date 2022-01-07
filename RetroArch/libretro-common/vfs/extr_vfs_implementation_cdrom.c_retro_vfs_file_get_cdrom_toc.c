
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cdrom_toc_t ;


 int const vfs_cdrom_toc ;

const cdrom_toc_t* retro_vfs_file_get_cdrom_toc(void)
{
   return &vfs_cdrom_toc;
}
