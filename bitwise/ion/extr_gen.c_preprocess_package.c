
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ name; size_t num_args; TYPE_3__* args; } ;
struct TYPE_14__ {scalar_t__ kind; int pos; TYPE_4__ note; } ;
struct TYPE_9__ {char* val; } ;
struct TYPE_13__ {scalar_t__ kind; TYPE_1__ str_lit; } ;
struct TYPE_11__ {char const* name; int pos; TYPE_5__* expr; } ;
struct TYPE_10__ {char* path; size_t num_decls; TYPE_6__** decls; void* external_name; } ;
typedef TYPE_2__ Package ;
typedef TYPE_3__ NoteArg ;
typedef TYPE_4__ Note ;
typedef TYPE_5__ Expr ;
typedef TYPE_6__ Decl ;


 scalar_t__ DECL_NOTE ;
 scalar_t__ EXPR_STR ;
 int MAX_PATH ;
 int add_foreign_header (char*) ;
 int add_foreign_source (char*) ;
 int buf_printf (char*,char*,...) ;
 int fatal_error (int ,char*,...) ;
 scalar_t__ foreign_name ;
 int gen_buf_pos (int *,int ) ;
 int gen_postamble_buf ;
 int gen_preamble_buf ;
 int put_include_path (char*,TYPE_2__*,char const*) ;
 void* str_intern (char*) ;

__attribute__((used)) static void preprocess_package(Package *package) {
    if (!package->external_name) {
        char *external_name = ((void*)0);
        for (const char *ptr = package->path; *ptr; ptr++) {
            buf_printf(external_name, "%c", *ptr == '/' ? '_' : *ptr);
        }
        buf_printf(external_name, "_");
        package->external_name = str_intern(external_name);
    }
    const char *header_name = str_intern("header");
    const char *source_name = str_intern("source");
    const char *preamble_name = str_intern("preamble");
    const char *postamble_name = str_intern("postamble");
    for (size_t i = 0; i < package->num_decls; i++) {
        Decl *decl = package->decls[i];
        if (decl->kind != DECL_NOTE) {
            continue;
        }
        Note note = decl->note;
        if (note.name == foreign_name) {
            for (size_t k = 0; k < note.num_args; k++) {
                NoteArg arg = note.args[k];
                Expr *expr = note.args[k].expr;
                if (expr->kind != EXPR_STR) {
                    fatal_error(decl->pos, "#foreign argument must be a string");
                }
                const char *str = expr->str_lit.val;
                if (arg.name == header_name) {
                    char path[MAX_PATH];
                    put_include_path(path, package, str);
                    add_foreign_header(path);
                } else if (arg.name == source_name) {
                    char path[MAX_PATH];
                    put_include_path(path, package, str);
                    add_foreign_source(path);
                } else if (arg.name == preamble_name) {
                    gen_buf_pos(&gen_preamble_buf, arg.pos);
                    buf_printf(gen_preamble_buf, "%s\n", str);
                } else if (arg.name == postamble_name) {
                    gen_buf_pos(&gen_postamble_buf, arg.pos);
                    buf_printf(gen_postamble_buf, "%s\n", str);
                } else {
                    fatal_error(decl->pos, "Unknown #foreign named argument '%s'", arg.name);
                }
            }
        }
    }
}
