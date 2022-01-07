
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int DBUS_TYPE_UINT32 ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*) ;
 int dbus_connection ;
 int * dbus_connection_send_with_reply_and_block (int ,int *,int,int *) ;
 int dbus_message_append_args (int *,int ,char const**,int ,char const**,int ) ;
 int dbus_message_get_args (int *,int *,int ,scalar_t__*,int ) ;
 int * dbus_message_new_method_call (char*,char*,char*,char*) ;
 int dbus_message_unref (int *) ;
 scalar_t__ dbus_screensaver_cookie ;

bool dbus_screensaver_inhibit(void)
{
   bool ret = 0;
   return ret;
}
