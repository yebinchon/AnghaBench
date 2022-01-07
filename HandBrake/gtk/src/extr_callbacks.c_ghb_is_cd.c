
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gchar ;
typedef int gboolean ;
typedef int GUdevDevice ;
typedef int GDrive ;


 int FALSE ;
 int G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE ;
 int TRUE ;
 int * g_drive_get_identifier (int *,int ) ;
 int g_free (int *) ;
 int g_message (char*,int *) ;
 int g_object_unref (int *) ;
 int * g_udev_client_query_by_device_file (int *,int *) ;
 int g_udev_device_get_property_as_int (int *,char*) ;
 int * udev_ctx ;

gboolean
ghb_is_cd(GDrive *gd)
{
    return FALSE;

}
