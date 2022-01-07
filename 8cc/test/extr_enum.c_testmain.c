
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tag { ____Placeholder_tag } tag ;


 int expect (int,int) ;
 int g1 ;
 int g3 ;
 int print (char*) ;

void testmain() {
    print("enum");

    expect(0, g1);
    expect(2, g3);

    enum { x } v;
    expect(0, x);

    enum { y };
    expect(0, y);

    enum tag { z };
    enum tag a = z;
    expect(0, z);
    expect(0, a);
}
