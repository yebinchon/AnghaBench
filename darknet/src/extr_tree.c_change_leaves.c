
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int n; int* leaf; int * name; } ;
typedef TYPE_1__ tree ;
struct TYPE_7__ {int size; } ;
typedef TYPE_2__ list ;


 int fprintf (int ,char*,int) ;
 TYPE_2__* get_paths (char*) ;
 scalar_t__ list_to_array (TYPE_2__*) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;

void change_leaves(tree *t, char *leaf_list)
{
    list *llist = get_paths(leaf_list);
    char **leaves = (char **)list_to_array(llist);
    int n = llist->size;
    int i,j;
    int found = 0;
    for(i = 0; i < t->n; ++i){
        t->leaf[i] = 0;
        for(j = 0; j < n; ++j){
            if (0==strcmp(t->name[i], leaves[j])){
                t->leaf[i] = 1;
                ++found;
                break;
            }
        }
    }
    fprintf(stderr, "Found %d leaves.\n", found);
}
