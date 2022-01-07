
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_14__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;
struct TYPE_15__ {scalar_t__ kind; int sval; } ;
typedef TYPE_2__ Token ;
struct TYPE_16__ {scalar_t__ kind; } ;


 scalar_t__ KIND_ARRAY ;
 scalar_t__ KIND_STRUCT ;
 scalar_t__ TSTRING ;
 int assign_string (int *,TYPE_1__*,int ,int) ;
 int expect (char) ;
 TYPE_2__* get () ;
 scalar_t__ is_keyword (TYPE_2__*,char) ;
 scalar_t__ is_string (TYPE_1__*) ;
 TYPE_1__* make_array_type (TYPE_1__*,int) ;
 TYPE_7__* peek () ;
 int read_array_initializer (int *,TYPE_1__*,int,int) ;
 int read_struct_initializer (int *,TYPE_1__*,int,int) ;
 int unget_token (TYPE_2__*) ;

__attribute__((used)) static void read_initializer_list(Vector *inits, Type *ty, int off, bool designated) {
    Token *tok = get();
    if (is_string(ty)) {
        if (tok->kind == TSTRING) {
            assign_string(inits, ty, tok->sval, off);
            return;
        }
        if (is_keyword(tok, '{') && peek()->kind == TSTRING) {
            tok = get();
            assign_string(inits, ty, tok->sval, off);
            expect('}');
            return;
        }
    }
    unget_token(tok);
    if (ty->kind == KIND_ARRAY) {
        read_array_initializer(inits, ty, off, designated);
    } else if (ty->kind == KIND_STRUCT) {
        read_struct_initializer(inits, ty, off, designated);
    } else {
        Type *arraytype = make_array_type(ty, 1);
        read_array_initializer(inits, arraytype, off, designated);
    }
}
