
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_buf {int flags; struct net_buf* frags; } ;
typedef struct net_buf sys_slist_t ;


 int NET_BUF_ASSERT (struct net_buf*) ;
 int NET_BUF_FRAGS ;
 unsigned int bt_mesh_irq_lock () ;
 int bt_mesh_irq_unlock (unsigned int) ;
 scalar_t__ sys_slist_get (struct net_buf*) ;

struct net_buf *net_buf_slist_get(sys_slist_t *list)
{
    struct net_buf *buf, *frag;
    unsigned int key;

    NET_BUF_ASSERT(list);

    key = bt_mesh_irq_lock();
    buf = (void *)sys_slist_get(list);
    bt_mesh_irq_unlock(key);

    if (!buf) {
        return ((void*)0);
    }


    for (frag = buf; (frag->flags & NET_BUF_FRAGS); frag = frag->frags) {
        key = bt_mesh_irq_lock();
        frag->frags = (void *)sys_slist_get(list);
        bt_mesh_irq_unlock(key);

        NET_BUF_ASSERT(frag->frags);


        frag->flags &= ~NET_BUF_FRAGS;
    }


    frag->frags = ((void*)0);

    return buf;
}
