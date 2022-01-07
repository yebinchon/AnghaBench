
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int INT_MAX ;
 scalar_t__ vc_hostfs_freespace64 (char const*) ;

int vc_hostfs_freespace(const char *inPath)
{
   int ret;

   int64_t freeSpace = vc_hostfs_freespace64( inPath );


   if (freeSpace > (int64_t) INT_MAX)
   {
      ret = INT_MAX;
   }
   else
   {
      ret = (int) freeSpace;
   }

   return ret;
}
