
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf {int node; int flags; struct net_buf* frags; } ;
typedef struct net_buf sys_slist_t ;


 int NET_BUF_ASSERT (struct net_buf*) ;
 int NET_BUF_FRAGS ;
 unsigned int bt_mesh_irq_lock () ;
 int bt_mesh_irq_unlock (unsigned int) ;
 int sys_slist_append_list (struct net_buf*,int *,int *) ;

void net_buf_slist_put(sys_slist_t *list, struct net_buf *buf)
{
    struct net_buf *tail;
    unsigned int key;

    NET_BUF_ASSERT(list);
    NET_BUF_ASSERT(buf);

    for (tail = buf; tail->frags; tail = tail->frags) {
        tail->flags |= NET_BUF_FRAGS;
    }

    key = bt_mesh_irq_lock();
    sys_slist_append_list(list, &buf->node, &tail->node);
    bt_mesh_irq_unlock(key);
}
