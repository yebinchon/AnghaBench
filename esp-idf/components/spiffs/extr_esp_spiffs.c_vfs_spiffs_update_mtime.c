
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
typedef int t ;
struct TYPE_3__ {int meta; } ;
typedef TYPE_1__ spiffs_stat ;
typedef int spiffs_file ;
typedef int spiffs ;


 int CONFIG_SPIFFS_META_LENGTH ;
 int ESP_LOGW (int ,char*,int) ;
 int SPIFFS_OK ;
 int SPIFFS_fstat (int *,int ,TYPE_1__*) ;
 int SPIFFS_fupdate_meta (int *,int ,int ) ;
 int TAG ;
 int memcpy (int ,int *,int) ;
 int time (int *) ;

__attribute__((used)) static void vfs_spiffs_update_mtime(spiffs *fs, spiffs_file fd)
{
}
