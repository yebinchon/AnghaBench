
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlib {int* header; } ;


 int UNREACHED ;
 int assert (int ) ;

__attribute__((used)) static const char *
zlib_flevel(struct zlib *zlib)
{
   switch (zlib->header[1] >> 6)
   {
      case 0: return "supfast";
      case 1: return "stdfast";
      case 2: return "default";
      case 3: return "maximum";
      default: assert(UNREACHED);
   }

   return "COMPILER BUG";
}
