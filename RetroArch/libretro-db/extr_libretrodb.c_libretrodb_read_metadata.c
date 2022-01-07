
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ libretrodb_metadata_t ;
typedef int RFILE ;


 int rmsgpack_dom_read_into (int *,char*,int *,int *) ;

__attribute__((used)) static int libretrodb_read_metadata(RFILE *fd, libretrodb_metadata_t *md)
{
   return rmsgpack_dom_read_into(fd, "count", &md->count, ((void*)0));
}
