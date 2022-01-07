
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ libretrodb_metadata_t ;
typedef int RFILE ;


 int STRLEN_CONST (char*) ;
 int rmsgpack_write_map_header (int *,int) ;
 int rmsgpack_write_string (int *,char*,int ) ;
 int rmsgpack_write_uint (int *,int ) ;

__attribute__((used)) static int libretrodb_write_metadata(RFILE *fd, libretrodb_metadata_t *md)
{
   rmsgpack_write_map_header(fd, 1);
   rmsgpack_write_string(fd, "count", STRLEN_CONST("count"));
   return rmsgpack_write_uint(fd, md->count);
}
