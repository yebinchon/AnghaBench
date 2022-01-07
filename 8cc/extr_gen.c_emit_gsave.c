
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;


 scalar_t__ KIND_ARRAY ;
 int SAVE ;
 int assert (int) ;
 int emit (char*,char*,char*) ;
 char* format (char*,char*,int) ;
 char* get_int_reg (TYPE_1__*,char) ;
 int maybe_convert_bool (TYPE_1__*) ;
 int maybe_emit_bitshift_save (TYPE_1__*,char*) ;

__attribute__((used)) static void emit_gsave(char *varname, Type *ty, int off) {
    SAVE;
    assert(ty->kind != KIND_ARRAY);
    maybe_convert_bool(ty);
    char *reg = get_int_reg(ty, 'a');
    char *addr = format("%s+%d(%%rip)", varname, off);
    maybe_emit_bitshift_save(ty, addr);
    emit("mov #%s, %s", reg, addr);
}
