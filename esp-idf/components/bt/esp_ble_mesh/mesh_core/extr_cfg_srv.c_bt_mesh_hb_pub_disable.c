
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ conf ;
 int hb_pub_disable (scalar_t__) ;

void bt_mesh_hb_pub_disable(void)
{
    if (conf) {
        hb_pub_disable(conf);
    }
}
