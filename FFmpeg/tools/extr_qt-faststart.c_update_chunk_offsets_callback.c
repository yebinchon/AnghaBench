
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int depth; } ;
typedef TYPE_1__ update_chunk_offsets_context_t ;
struct TYPE_11__ {int type; int size; int data; } ;
typedef TYPE_2__ atom_t ;
 int fprintf (int ,char*) ;
 int parse_atoms (int ,int ,int (*) (void*,TYPE_2__*),TYPE_1__*) ;
 int stderr ;
 int update_co64_offsets (TYPE_1__*,TYPE_2__*) ;
 int update_stco_offsets (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int update_chunk_offsets_callback(void *ctx, atom_t *atom)
{
    update_chunk_offsets_context_t *context = ctx;
    int ret;

    switch (atom->type) {
    case 129:
        return update_stco_offsets(context, atom);

    case 134:
        return update_co64_offsets(context, atom);

    case 131:
    case 128:
    case 133:
    case 132:
    case 130:
        context->depth++;
        if (context->depth > 10) {
            fprintf(stderr, "atoms too deeply nested\n");
            return -1;
        }

        ret = parse_atoms(
            atom->data,
            atom->size,
            update_chunk_offsets_callback,
            context);
        context->depth--;
        return ret;
    }

    return 0;
}
