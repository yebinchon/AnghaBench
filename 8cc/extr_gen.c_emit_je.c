
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit (char*,...) ;

__attribute__((used)) static void emit_je(char *label) {
    emit("test #rax, #rax");
    emit("je %s", label);
}
