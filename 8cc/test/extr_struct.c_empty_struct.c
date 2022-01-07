
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int ,int) ;

__attribute__((used)) static void empty_struct() {
    struct tag15 {};
    expect(0, sizeof(struct tag15));
    union tag16 {};
    expect(0, sizeof(union tag16));
}
