
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_2__ {int default_ttl; } ;


 int DEFAULT_TTL ;
 TYPE_1__* conf ;

u8_t bt_mesh_default_ttl_get(void)
{
    if (conf) {
        return conf->default_ttl;
    }

    return DEFAULT_TTL;
}
