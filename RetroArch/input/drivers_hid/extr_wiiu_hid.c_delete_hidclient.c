
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HIDClient ;


 int RARCH_LOG (char*) ;
 int free (int *) ;

__attribute__((used)) static void delete_hidclient(HIDClient *client)
{
   RARCH_LOG("[hid]: delete_hidclient()\n");
   if (client)
      free(client);
}
