
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_10__ {scalar_t__ kind; int bitsize; } ;
typedef TYPE_1__ Type ;


 int DECL_PARAM_TYPEONLY ;
 scalar_t__ KIND_STRUCT ;
 char KSTATIC_ASSERT ;
 TYPE_1__* copy_type (TYPE_1__*) ;
 int ensure_not_void (TYPE_1__*) ;
 int expect (char) ;
 scalar_t__ is_keyword (int ,char) ;
 int is_type (int ) ;
 int make_pair (char*,TYPE_1__*) ;
 int * make_vector () ;
 scalar_t__ next_token (char) ;
 int peek () ;
 int read_bitsize (char*,TYPE_1__*) ;
 TYPE_1__* read_decl_spec (int *) ;
 TYPE_1__* read_declarator (char**,TYPE_1__*,int *,int ) ;
 int read_static_assert () ;
 int vec_push (int *,int ) ;
 int warnt (int ,char*) ;

__attribute__((used)) static Vector *read_rectype_fields_sub() {
    Vector *r = make_vector();
    for (;;) {
        if (next_token(KSTATIC_ASSERT)) {
            read_static_assert();
            continue;
        }
        if (!is_type(peek()))
            break;
        Type *basetype = read_decl_spec(((void*)0));
        if (basetype->kind == KIND_STRUCT && next_token(';')) {
            vec_push(r, make_pair(((void*)0), basetype));
            continue;
        }
        for (;;) {
            char *name = ((void*)0);
            Type *fieldtype = read_declarator(&name, basetype, ((void*)0), DECL_PARAM_TYPEONLY);
            ensure_not_void(fieldtype);
            fieldtype = copy_type(fieldtype);
            fieldtype->bitsize = next_token(':') ? read_bitsize(name, fieldtype) : -1;
            vec_push(r, make_pair(name, fieldtype));
            if (next_token(','))
                continue;
            if (is_keyword(peek(), '}'))
                warnt(peek(), "missing ';' at the end of field list");
            else
                expect(';');
            break;
        }
    }
    expect('}');
    return r;
}
