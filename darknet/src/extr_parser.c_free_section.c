
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* options; struct TYPE_6__* next; struct TYPE_6__* key; scalar_t__ val; struct TYPE_6__* front; struct TYPE_6__* type; } ;
typedef TYPE_1__ section ;
typedef TYPE_1__ node ;
typedef TYPE_1__ kvp ;


 int free (TYPE_1__*) ;

void free_section(section *s)
{
    free(s->type);
    node *n = s->options->front;
    while(n){
        kvp *pair = (kvp *)n->val;
        free(pair->key);
        free(pair);
        node *next = n->next;
        free(n);
        n = next;
    }
    free(s->options);
    free(s);
}
