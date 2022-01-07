
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_USERS ;
 int hid_init (int *,int *,int *,int ) ;
 int hid_instance ;
 int hidpad_driver ;
 int wiiu_hid ;

__attribute__((used)) static bool init_hid_driver(void)
{
   return hid_init(&hid_instance, &wiiu_hid, &hidpad_driver, MAX_USERS);
}
