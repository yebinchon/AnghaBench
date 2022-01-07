
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAVE ;
 int assert (int) ;
 int emit (char*,...) ;
 scalar_t__ stackpos ;

__attribute__((used)) static void pop_xmm(int reg) {
    SAVE;
    emit("movsd (#rsp), #xmm%d", reg);
    emit("add $8, #rsp");
    stackpos -= 8;
    assert(stackpos >= 0);
}
