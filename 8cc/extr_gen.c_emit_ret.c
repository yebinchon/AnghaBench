
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAVE ;
 int emit (char*) ;

__attribute__((used)) static void emit_ret() {
    SAVE;
    emit("leave");
    emit("ret");
}
