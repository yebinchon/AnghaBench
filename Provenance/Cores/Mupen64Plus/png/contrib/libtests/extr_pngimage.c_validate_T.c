
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int when; int transform; int * name; } ;


 int TRANSFORM_R ;
 int TRANSFORM_W ;
 unsigned int TTABLE_SIZE ;
 int read_transforms ;
 int rw_transforms ;
 TYPE_1__* transform_info ;
 int write_transforms ;

__attribute__((used)) static void
validate_T(void)

{
   unsigned int i;

   for (i=0; i<TTABLE_SIZE; ++i) if (transform_info[i].name != ((void*)0))
   {
      if (transform_info[i].when & TRANSFORM_R)
         read_transforms |= transform_info[i].transform;

      if (transform_info[i].when & TRANSFORM_W)
         write_transforms |= transform_info[i].transform;
   }




   rw_transforms = read_transforms & write_transforms;
}
