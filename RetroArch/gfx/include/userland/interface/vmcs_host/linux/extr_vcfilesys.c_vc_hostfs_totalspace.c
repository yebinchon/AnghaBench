
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int INT_MAX ;
 scalar_t__ vc_hostfs_totalspace64 (char const*) ;

int vc_hostfs_totalspace(const char *inPath)
{
   int ret;
   int64_t totalSpace = vc_hostfs_totalspace64(inPath);


   if (totalSpace > (int64_t) INT_MAX)
   {
      ret = INT_MAX;
   }
   else
   {
      ret = (int) totalSpace;
   }
   return ret;
}
