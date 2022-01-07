
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ val; } ;
typedef TYPE_1__ node ;
struct TYPE_6__ {TYPE_1__* front; } ;
typedef TYPE_2__ list ;
struct TYPE_7__ {char* key; char* val; int used; } ;
typedef TYPE_3__ kvp ;


 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

void option_unused(list *l)
{
    node *n = l->front;
    while(n){
        kvp *p = (kvp *)n->val;
        if(!p->used){
            fprintf(stderr, "Unused field: '%s = %s'\n", p->key, p->val);
        }
        n = n->next;
    }
}
