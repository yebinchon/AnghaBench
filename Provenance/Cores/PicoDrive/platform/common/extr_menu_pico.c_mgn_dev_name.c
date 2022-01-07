
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_MAX_DEVS ;
 int MA_CTRL_DEV_FIRST ;
 char* in_get_dev_name (int,int,int) ;

__attribute__((used)) static const char *mgn_dev_name(int id, int *offs)
{
 const char *name = ((void*)0);
 static int it = 0;

 if (id == MA_CTRL_DEV_FIRST)
  it = 0;

 for (; it < IN_MAX_DEVS; it++) {
  name = in_get_dev_name(it, 1, 1);
  if (name != ((void*)0))
   break;
 }

 it++;
 return name;
}
