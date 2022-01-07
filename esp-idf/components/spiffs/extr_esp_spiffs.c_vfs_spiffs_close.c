
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fs; } ;
typedef TYPE_1__ esp_spiffs_t ;


 int SPIFFS_clearerr (int ) ;
 int SPIFFS_close (int ,int) ;
 int SPIFFS_errno (int ) ;
 int errno ;
 int spiffs_res_to_errno (int ) ;

__attribute__((used)) static int vfs_spiffs_close(void* ctx, int fd)
{
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    int res = SPIFFS_close(efs->fs, fd);
    if (res < 0) {
        errno = spiffs_res_to_errno(SPIFFS_errno(efs->fs));
        SPIFFS_clearerr(efs->fs);
        return -1;
    }
    return res;
}
