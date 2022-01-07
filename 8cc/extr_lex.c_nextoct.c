
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int peek () ;

__attribute__((used)) static bool nextoct() {
    int c = peek();
    return '0' <= c && c <= '7';
}
