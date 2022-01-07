
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void const* elem; int state; struct TYPE_5__** child; } ;
typedef TYPE_1__ AVTreeNode ;


 int av_tree_find (TYPE_1__*,void*,int (*) (void const*,void const*),void**) ;

void *av_tree_insert(AVTreeNode **tp, void *key,
                     int (*cmp)(const void *key, const void *b), AVTreeNode **next)
{
    AVTreeNode *t = *tp;
    if (t) {
        unsigned int v = cmp(t->elem, key);
        void *ret;
        if (!v) {
            if (*next)
                return t->elem;
            else if (t->child[0] || t->child[1]) {
                int i = !t->child[0];
                void *next_elem[2];
                av_tree_find(t->child[i], key, cmp, next_elem);
                key = t->elem = next_elem[i];
                v = -i;
            } else {
                *next = t;
                *tp = ((void*)0);
                return ((void*)0);
            }
        }
        ret = av_tree_insert(&t->child[v >> 31], key, cmp, next);
        if (!ret) {
            int i = (v >> 31) ^ !!*next;
            AVTreeNode **child = &t->child[i];
            t->state += 2 * i - 1;

            if (!(t->state & 1)) {
                if (t->state) {
                    if ((*child)->state * 2 == -t->state) {
                        *tp = (*child)->child[i ^ 1];
                        (*child)->child[i ^ 1] = (*tp)->child[i];
                        (*tp)->child[i] = *child;
                        *child = (*tp)->child[i ^ 1];
                        (*tp)->child[i ^ 1] = t;

                        (*tp)->child[0]->state = -((*tp)->state > 0);
                        (*tp)->child[1]->state = (*tp)->state < 0;
                        (*tp)->state = 0;
                    } else {
                        *tp = *child;
                        *child = (*child)->child[i ^ 1];
                        (*tp)->child[i ^ 1] = t;
                        if ((*tp)->state)
                            t->state = 0;
                        else
                            t->state >>= 1;
                        (*tp)->state = -t->state;
                    }
                }
            }
            if (!(*tp)->state ^ !!*next)
                return key;
        }
        return ret;
    } else {
        *tp = *next;
        *next = ((void*)0);
        if (*tp) {
            (*tp)->elem = key;
            return ((void*)0);
        } else
            return key;
    }
}
