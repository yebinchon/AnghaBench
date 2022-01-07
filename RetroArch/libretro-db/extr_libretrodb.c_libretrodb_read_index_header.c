
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int next; int key_size; int name; } ;
typedef TYPE_1__ libretrodb_index_t ;
typedef int RFILE ;


 int rmsgpack_dom_read_into (int *,char*,int ,int*,char*,int *,char*,int *,int *) ;

__attribute__((used)) static int libretrodb_read_index_header(RFILE *fd, libretrodb_index_t *idx)
{
   uint64_t name_len = 50;
   return rmsgpack_dom_read_into(fd,
         "name", idx->name, &name_len,
         "key_size", &idx->key_size,
         "next", &idx->next, ((void*)0));
}
