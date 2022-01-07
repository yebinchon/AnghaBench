
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {int fourcc; int variant; scalar_t__ codecid; } ;


 TYPE_1__* codecid_to_fourcc_table ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static VC_CONTAINER_FOURCC_T mkv_codecid_to_fourcc(const char *codecid,
   VC_CONTAINER_FOURCC_T *variant)
{
   unsigned int i;
   for(i = 0; codecid_to_fourcc_table[i].codecid; i++)
      if(!strcmp(codecid_to_fourcc_table[i].codecid, codecid)) break;
   if (variant) *variant = codecid_to_fourcc_table[i].variant;
   return codecid_to_fourcc_table[i].fourcc;
}
