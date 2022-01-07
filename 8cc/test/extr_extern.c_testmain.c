
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int ) ;
 int externvar1 ;
 int externvar2 ;
 int print (char*) ;

void testmain() {
    print("extern");
    expect(98, externvar1);
    expect(99, externvar2);
}
