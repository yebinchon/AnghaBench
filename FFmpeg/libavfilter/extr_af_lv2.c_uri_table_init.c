
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n_uris; int * uris; } ;
typedef TYPE_1__ URITable ;



__attribute__((used)) static void uri_table_init(URITable *table)
{
    table->uris = ((void*)0);
    table->n_uris = 0;
}
