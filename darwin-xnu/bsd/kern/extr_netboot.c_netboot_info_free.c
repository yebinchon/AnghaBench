
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netboot_info {int mount_point_length; int server_name_length; int image_path_length; int second_image_path_length; struct netboot_info* second_image_path; struct netboot_info* image_path; struct netboot_info* server_name; struct netboot_info* mount_point; } ;


 int kfree (struct netboot_info*,int) ;

__attribute__((used)) static void
netboot_info_free(struct netboot_info * * info_p)
{
    struct netboot_info * info = *info_p;

    if (info) {
 if (info->mount_point) {
     kfree(info->mount_point, info->mount_point_length);
 }
 if (info->server_name) {
     kfree(info->server_name, info->server_name_length);
 }
 if (info->image_path) {
     kfree(info->image_path, info->image_path_length);
 }
 if (info->second_image_path) {
     kfree(info->second_image_path, info->second_image_path_length);
 }
 kfree(info, sizeof(*info));
    }
    *info_p = ((void*)0);
    return;
}
