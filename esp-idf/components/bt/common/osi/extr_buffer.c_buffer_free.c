
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ refcount; struct TYPE_4__* root; } ;
typedef TYPE_1__ buffer_t ;


 int osi_free (TYPE_1__*) ;

void buffer_free(buffer_t *buffer)
{
    if (!buffer) {
        return;
    }

    if (buffer->root != buffer) {

        if (--buffer->root->refcount == 0) {
            osi_free(buffer->root);
        }
        osi_free(buffer);
    } else if (--buffer->refcount == 0) {

        osi_free(buffer);
    }
}
