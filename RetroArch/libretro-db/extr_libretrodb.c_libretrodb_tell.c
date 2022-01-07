
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ libretrodb_t ;


 int filestream_tell (int ) ;

__attribute__((used)) static uint64_t libretrodb_tell(libretrodb_t *db)
{
   return filestream_tell(db->fd);
}
