
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int func; } ;
struct TYPE_8__ {int name; TYPE_1__ versions; struct TYPE_8__** child; } ;
typedef TYPE_2__ CheckasmFunc ;


 int balance_tree (TYPE_2__**) ;
 TYPE_2__* checkasm_malloc (int) ;
 int cmp_func_names (char const*,int ) ;
 int memcpy (int ,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static CheckasmFunc *get_func(CheckasmFunc **root, const char *name)
{
    CheckasmFunc *f = *root;

    if (f) {

        int cmp = cmp_func_names(name, f->name);
        if (cmp) {
            f = get_func(&f->child[cmp > 0], name);


            if (!f->versions.func)
                balance_tree(root);
        }
    } else {

        int name_length = strlen(name);
        f = *root = checkasm_malloc(sizeof(CheckasmFunc) + name_length);
        memcpy(f->name, name, name_length + 1);
    }

    return f;
}
