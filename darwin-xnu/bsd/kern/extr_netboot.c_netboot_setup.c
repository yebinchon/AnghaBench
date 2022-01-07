
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * second_image_path; int * image_path; } ;


 TYPE_1__* S_netboot_info_p ;
 int imageboot_mount_image (int *,int) ;
 int netboot_info_free (TYPE_1__**) ;
 int printf (char*,...) ;

int
netboot_setup()
{
    int error = 0;

    if (S_netboot_info_p == ((void*)0)
 || S_netboot_info_p->image_path == ((void*)0)) {
 goto done;
    }
    printf("netboot_setup: calling imageboot_mount_image\n");
    error = imageboot_mount_image(S_netboot_info_p->image_path, -1);
    if (error != 0) {
 printf("netboot: failed to mount root image, %d\n", error);
    }
    else if (S_netboot_info_p->second_image_path != ((void*)0)) {
 error = imageboot_mount_image(S_netboot_info_p->second_image_path, 0);
 if (error != 0) {
     printf("netboot: failed to mount second root image, %d\n", error);
 }
    }

 done:
    netboot_info_free(&S_netboot_info_p);
    return (error);
}
