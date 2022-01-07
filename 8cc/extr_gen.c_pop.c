
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAVE ;
 int assert (int) ;
 int emit (char*,char*) ;
 scalar_t__ stackpos ;

__attribute__((used)) static void pop(char *reg) {
    SAVE;
    emit("pop #%s", reg);
    stackpos -= 8;
    assert(stackpos >= 0);
}
