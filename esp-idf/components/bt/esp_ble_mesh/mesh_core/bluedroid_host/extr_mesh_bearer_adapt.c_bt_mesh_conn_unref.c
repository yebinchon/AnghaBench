
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_conn {int ref; int handle; } ;


 int BT_DBG (char*,int ,int ) ;
 int bt_mesh_atomic_dec (int *) ;
 int bt_mesh_atomic_get (int *) ;

void bt_mesh_conn_unref(struct bt_mesh_conn *conn)
{
    bt_mesh_atomic_dec(&conn->ref);

    BT_DBG("handle %u ref %u", conn->handle, bt_mesh_atomic_get(&conn->ref));
}
