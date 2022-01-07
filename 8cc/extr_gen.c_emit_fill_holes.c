
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {int initoff; TYPE_1__* totype; } ;
struct TYPE_6__ {int size; } ;
typedef TYPE_2__ Node ;


 int cmpinit ;
 int emit_zero_filler (int,int) ;
 TYPE_2__** malloc (int) ;
 int qsort (TYPE_2__**,int,int,int ) ;
 TYPE_2__* vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static void emit_fill_holes(Vector *inits, int off, int totalsize) {


    int len = vec_len(inits);
    Node **buf = malloc(len * sizeof(Node *));
    for (int i = 0; i < len; i++)
        buf[i] = vec_get(inits, i);
    qsort(buf, len, sizeof(Node *), cmpinit);

    int lastend = 0;
    for (int i = 0; i < len; i++) {
        Node *node = buf[i];
        if (lastend < node->initoff)
            emit_zero_filler(lastend + off, node->initoff + off);
        lastend = node->initoff + node->totype->size;
    }
    emit_zero_filler(lastend + off, totalsize + off);
}
