
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (char,char) ;

__attribute__((used)) static void t13() {
    struct { char c; } v = { 'a' };
    expect('a', v.c);
}
