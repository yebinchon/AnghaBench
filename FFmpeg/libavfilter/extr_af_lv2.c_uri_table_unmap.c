
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_uris; char const** uris; } ;
typedef TYPE_1__ URITable ;
typedef scalar_t__ LV2_URID_Map_Handle ;
typedef int LV2_URID ;



__attribute__((used)) static const char *uri_table_unmap(LV2_URID_Map_Handle handle, LV2_URID urid)
{
    URITable *table = (URITable*)handle;

    if (urid > 0 && urid <= table->n_uris) {
        return table->uris[urid - 1];
    }

    return ((void*)0);
}
