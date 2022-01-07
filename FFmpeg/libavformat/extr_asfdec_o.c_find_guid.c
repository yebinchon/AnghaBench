
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ff_asf_guid ;
struct TYPE_5__ {int guid; } ;
typedef TYPE_1__ GUIDParseTable ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* gdef ;
 int memcmp (int ,int ,int) ;
 int swap_guid (int ) ;

__attribute__((used)) static const GUIDParseTable *find_guid(ff_asf_guid guid)
{
    int j, ret;
    const GUIDParseTable *g;

    swap_guid(guid);
    g = gdef;
    for (j = 0; j < FF_ARRAY_ELEMS(gdef); j++) {
        if (!(ret = memcmp(guid, g->guid, sizeof(g->guid))))
            return g;
        g++;
    }

    return ((void*)0);
}
