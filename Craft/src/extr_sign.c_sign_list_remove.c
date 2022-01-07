
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int x; int y; int z; int face; } ;
struct TYPE_6__ {int size; TYPE_2__* data; } ;
typedef TYPE_1__ SignList ;
typedef TYPE_2__ Sign ;


 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

int sign_list_remove(SignList *list, int x, int y, int z, int face) {
    int result = 0;
    for (int i = 0; i < list->size; i++) {
        Sign *e = list->data + i;
        if (e->x == x && e->y == y && e->z == z && e->face == face) {
            Sign *other = list->data + (--list->size);
            memcpy(e, other, sizeof(Sign));
            i--;
            result++;
        }
    }
    return result;
}
