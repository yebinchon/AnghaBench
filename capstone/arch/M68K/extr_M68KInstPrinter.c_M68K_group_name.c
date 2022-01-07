
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csh ;


 int ARR_SIZE (int ) ;
 int group_name_maps ;
 char const* id2name (int ,int ,unsigned int) ;

const char *M68K_group_name(csh handle, unsigned int id)
{

 return id2name(group_name_maps, ARR_SIZE(group_name_maps), id);



}
