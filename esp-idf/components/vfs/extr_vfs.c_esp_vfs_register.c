
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_vfs_t ;
typedef int esp_err_t ;


 int esp_vfs_register_common (char const*,int ,int const*,void*,int *) ;
 int strlen (char const*) ;

esp_err_t esp_vfs_register(const char* base_path, const esp_vfs_t* vfs, void* ctx)
{
    return esp_vfs_register_common(base_path, strlen(base_path), vfs, ctx, ((void*)0));
}
