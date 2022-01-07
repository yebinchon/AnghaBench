
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,char) ;

__attribute__((used)) static void t4() {
    char s[] = "xyz";
    char *c = s + 2;
    expect(122, *c);
}
