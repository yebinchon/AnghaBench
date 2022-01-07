
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int comp_type_t ;


 size_t ARRAY_SIZE (int *) ;
 int VIDEO_LAYOUT_C_UNKNOWN ;
 int * comp_type_str ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static comp_type_t comp_type_from_str(const char *s)
{
   size_t i;

   for (i = 2; i < ARRAY_SIZE(comp_type_str); ++i)
   {
      if (strcmp(s, comp_type_str[i]) == 0)
         return (comp_type_t)(int)i;
   }

   return VIDEO_LAYOUT_C_UNKNOWN;
}
