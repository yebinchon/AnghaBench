
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GDrive ;


 int G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE ;
 int * g_drive_get_identifier (int *,int ) ;

__attribute__((used)) static gchar*
get_dvd_device_name(GDrive *gd)
{
    return g_drive_get_identifier(gd, G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE);
}
