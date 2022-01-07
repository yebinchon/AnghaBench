
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long read_offset; } ;


 int DEBUG_MAJOR (char*,int,void*,unsigned int) ;
 int DEBUG_MINOR (char*,int,void*,unsigned int,int) ;
 int file_info_table_len ;
 TYPE_1__* p_file_info_table ;
 scalar_t__ read (int,void*,unsigned int) ;

int vc_hostfs_read(int fildes, void *buf, unsigned int nbyte)
{
   if (fildes >= file_info_table_len)
   {

      DEBUG_MAJOR("vc_hostfs_read(%d,%p,%u): invalid fildes", fildes, buf, nbyte);
      return -1;
   }
   else
   {


      int ret = (int) read(fildes, buf, nbyte);
      DEBUG_MINOR("vc_hostfs_read(%d,%p,%u) = %d", fildes, buf, nbyte, ret);
      if (ret > 0)
      {
         p_file_info_table[fildes].read_offset += (long) ret;
      }
      return ret;
   }
}
