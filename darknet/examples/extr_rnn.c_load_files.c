
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ val; } ;
typedef TYPE_1__ node ;
struct TYPE_5__ {int size; TYPE_1__* front; } ;
typedef TYPE_2__ list ;


 unsigned char** calloc (int,int) ;
 TYPE_2__* get_paths (char*) ;
 unsigned char* read_file (char*) ;

unsigned char **load_files(char *filename, int *n)
{
    list *paths = get_paths(filename);
    *n = paths->size;
    unsigned char **contents = calloc(*n, sizeof(char *));
    int i;
    node *x = paths->front;
    for(i = 0; i < *n; ++i){
        contents[i] = read_file((char *)x->val);
        x = x->next;
    }
    return contents;
}
