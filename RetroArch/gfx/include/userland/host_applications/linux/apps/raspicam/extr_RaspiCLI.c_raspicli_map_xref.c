
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmal_mode; int mode; } ;
typedef TYPE_1__ XREF_T ;


 int strcasecmp (char const*,int ) ;

int raspicli_map_xref(const char *str, const XREF_T *map, int num_refs)
{
   int i;

   for (i=0; i<num_refs; i++)
   {
      if (!strcasecmp(str, map[i].mode))
      {
         return map[i].mmal_mode;
      }
   }
   return -1;
}
