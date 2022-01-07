
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int fs; } ;
typedef TYPE_1__ esp_spiffs_t ;


 int SPIFFS_clearerr (int ) ;
 int SPIFFS_errno (int ) ;
 scalar_t__ SPIFFS_read (int ,int,void*,size_t) ;
 int errno ;
 int spiffs_res_to_errno (int ) ;

__attribute__((used)) static ssize_t vfs_spiffs_read(void* ctx, int fd, void * dst, size_t size)
{
    esp_spiffs_t * efs = (esp_spiffs_t *)ctx;
    ssize_t res = SPIFFS_read(efs->fs, fd, dst, size);
    if (res < 0) {
        errno = spiffs_res_to_errno(SPIFFS_errno(efs->fs));
        SPIFFS_clearerr(efs->fs);
        return -1;
    }
    return res;
}
