
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csh ;


 unsigned int ARR_SIZE (char const**) ;
 char const** GroupNames ;

const char *MOS65XX_group_name(csh handle, unsigned int id)
{



 if (id >= ARR_SIZE(GroupNames)) {
  return ((void*)0);
 }
 return GroupNames[(int)id];

}
