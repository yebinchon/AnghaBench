
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAVE ;
 int emit (char*,int) ;

__attribute__((used)) static void emit_zero_filler(int start, int end) {
    SAVE;
    for (; start <= end - 4; start += 4)
        emit("movl $0, %d(#rbp)", start);
    for (; start < end; start++)
        emit("movb $0, %d(#rbp)", start);
}
