
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int SAVE ;
 int emit (char*,...) ;
 char* get_int_reg (int *,char) ;
 int pop (char*) ;

__attribute__((used)) static void do_emit_assign_deref(Type *ty, int off) {
    SAVE;
    emit("mov (#rsp), #rcx");
    char *reg = get_int_reg(ty, 'c');
    if (off)
        emit("mov #%s, %d(#rax)", reg, off);
    else
        emit("mov #%s, (#rax)", reg);
    pop("rax");
}
