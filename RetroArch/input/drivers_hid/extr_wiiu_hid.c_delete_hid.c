
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wiiu_hid_t ;


 int RARCH_LOG (char*) ;
 int free (int *) ;

__attribute__((used)) static void delete_hid(wiiu_hid_t *hid)
{
   RARCH_LOG("[hid]: delete_hid()\n");
   if (hid)
      free(hid);
}
