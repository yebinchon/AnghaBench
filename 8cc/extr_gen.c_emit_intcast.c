
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; int usig; } ;
typedef TYPE_1__ Type ;
 int emit (char*) ;

__attribute__((used)) static void emit_intcast(Type *ty) {
    switch(ty->kind) {
    case 133:
    case 132:
        ty->usig ? emit("movzbq #al, #rax") : emit("movsbq #al, #rax");
        return;
    case 128:
        ty->usig ? emit("movzwq #ax, #rax") : emit("movswq #ax, #rax");
        return;
    case 131:
        ty->usig ? emit("mov #eax, #eax") : emit("cltq");
        return;
    case 129:
    case 130:
        return;
    }
}
