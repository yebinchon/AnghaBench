
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusMessage ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_UINT32 ;
 int dbus_connection ;
 int dbus_connection_flush (int ) ;
 scalar_t__ dbus_connection_send (int ,int *,int *) ;
 int dbus_message_append_args (int *,int ,scalar_t__*,int ) ;
 int * dbus_message_new_method_call (char*,char*,char*,char*) ;
 int dbus_message_unref (int *) ;
 scalar_t__ dbus_screensaver_cookie ;

void dbus_screensaver_uninhibit(void)
{
}
