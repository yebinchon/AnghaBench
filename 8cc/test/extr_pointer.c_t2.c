
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,char) ;

__attribute__((used)) static void t2() {
    char *c = "ab";
    expect(97, *c);
}
