
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;


 scalar_t__ KIND_DOUBLE ;
 scalar_t__ KIND_FLOAT ;
 int SAVE ;
 int emit (char*,...) ;
 char* format (char*,int) ;
 char* get_int_reg (TYPE_1__*,char) ;
 int maybe_convert_bool (TYPE_1__*) ;
 int maybe_emit_bitshift_save (TYPE_1__*,char*) ;

__attribute__((used)) static void emit_lsave(Type *ty, int off) {
    SAVE;
    if (ty->kind == KIND_FLOAT) {
        emit("movss #xmm0, %d(#rbp)", off);
    } else if (ty->kind == KIND_DOUBLE) {
        emit("movsd #xmm0, %d(#rbp)", off);
    } else {
        maybe_convert_bool(ty);
        char *reg = get_int_reg(ty, 'a');
        char *addr = format("%d(%%rbp)", off);
        maybe_emit_bitshift_save(ty, addr);
        emit("mov #%s, %s", reg, addr);
    }
}
