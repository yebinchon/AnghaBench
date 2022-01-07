
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int null_hid_t ;


 int free (int *) ;

__attribute__((used)) static void null_hid_free(const void *data)
{
   null_hid_t *hid_null = (null_hid_t*)data;

   if (hid_null)
      free(hid_null);
}
