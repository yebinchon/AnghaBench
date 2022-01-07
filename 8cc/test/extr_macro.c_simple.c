
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ONE ;
 int TWO ;
 int expect (int,int ) ;

__attribute__((used)) static void simple() {
    expect(1, ONE);
    expect(2, TWO);
}
