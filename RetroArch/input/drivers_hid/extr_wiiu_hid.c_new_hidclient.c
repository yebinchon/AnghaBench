
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HIDClient ;


 int RARCH_LOG (char*) ;
 int * alloc_zeroed (int,int) ;

__attribute__((used)) static HIDClient *new_hidclient(void)
{
   RARCH_LOG("[hid]: new_hidclient()\n");
   return alloc_zeroed(32, sizeof(HIDClient));
}
