
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAVE ;
 int emit (char*,char*) ;
 int stackpos ;

__attribute__((used)) static void push(char *reg) {
    SAVE;
    emit("push #%s", reg);
    stackpos += 8;
}
