
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wiiu_hid_t ;


 int RARCH_LOG (char*) ;
 int * alloc_zeroed (int,int) ;

__attribute__((used)) static wiiu_hid_t *new_hid(void)
{
   RARCH_LOG("[hid]: new_hid()\n");
   return alloc_zeroed(4, sizeof(wiiu_hid_t));
}
