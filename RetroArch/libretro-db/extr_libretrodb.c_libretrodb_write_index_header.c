
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {char* name; int next; int key_size; } ;
typedef TYPE_1__ libretrodb_index_t ;
typedef int RFILE ;


 scalar_t__ STRLEN_CONST (char*) ;
 int rmsgpack_write_map_header (int *,int) ;
 int rmsgpack_write_string (int *,char*,scalar_t__) ;
 int rmsgpack_write_uint (int *,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void libretrodb_write_index_header(RFILE *fd, libretrodb_index_t *idx)
{
   rmsgpack_write_map_header(fd, 3);
   rmsgpack_write_string(fd, "name", STRLEN_CONST("name"));
   rmsgpack_write_string(fd, idx->name, (uint32_t)strlen(idx->name));
   rmsgpack_write_string(fd, "key_size", (uint32_t)STRLEN_CONST("key_size"));
   rmsgpack_write_uint(fd, idx->key_size);
   rmsgpack_write_string(fd, "next", STRLEN_CONST("next"));
   rmsgpack_write_uint(fd, idx->next);
}
