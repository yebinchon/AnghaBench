
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bitsize; int bitoff; } ;
typedef TYPE_1__ Type ;


 int SAVE ;
 int emit (char*,...) ;
 int pop (char*) ;
 int push (char*) ;

__attribute__((used)) static void maybe_emit_bitshift_load(Type *ty) {
    SAVE;
    if (ty->bitsize <= 0)
        return;
    emit("shr $%d, #rax", ty->bitoff);
    push("rcx");
    emit("mov $0x%lx, #rcx", (1 << (long)ty->bitsize) - 1);
    emit("and #rcx, #rax");
    pop("rcx");
}
