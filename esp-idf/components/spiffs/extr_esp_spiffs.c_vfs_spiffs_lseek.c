
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_2__ {int fs; } ;
typedef TYPE_1__ esp_spiffs_t ;


 int SPIFFS_clearerr (int ) ;
 int SPIFFS_errno (int ) ;
 scalar_t__ SPIFFS_lseek (int ,int,scalar_t__,int) ;
 int errno ;
 int spiffs_res_to_errno (int ) ;

__attribute__((used)) static off_t vfs_spiffs_lseek(void* ctx, int fd, off_t offset, int mode)
{
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    off_t res = SPIFFS_lseek(efs->fs, fd, offset, mode);
    if (res < 0) {
        errno = spiffs_res_to_errno(SPIFFS_errno(efs->fs));
        SPIFFS_clearerr(efs->fs);
        return -1;
    }
    return res;
}
