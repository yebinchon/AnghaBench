
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int transform; } ;


 unsigned int TTABLE_SIZE ;
 TYPE_1__* transform_info ;

__attribute__((used)) static const char *
transform_name(int t)



{
   unsigned int i;

   t &= -t;

   for (i=0; i<TTABLE_SIZE; ++i) if (transform_info[i].name != ((void*)0))
   {
      if ((transform_info[i].transform & t) != 0)
         return transform_info[i].name;
   }

   return "invalid transform";
}
