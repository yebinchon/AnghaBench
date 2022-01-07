
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf_simple {int dummy; } ;


 int osi_free (struct net_buf_simple*) ;

void bt_mesh_free_buf(struct net_buf_simple *buf)
{
    if (buf) {
        osi_free(buf);
    }
}
