
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * set_info; } ;
typedef TYPE_1__ example_fast_prov_server_t ;


 int osi_free (int *) ;

__attribute__((used)) static void example_free_set_info(example_fast_prov_server_t *srv)
{
    if (srv && srv->set_info) {
        osi_free(srv->set_info);
        srv->set_info = ((void*)0);
    }
}
