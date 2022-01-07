
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Symbol ;


 int dopending (int ) ;
 int put (int ) ;
 int rcc_Import (int ) ;
 int symboluid (int ) ;

__attribute__((used)) static void asdl_import(Symbol p) {
 dopending(p);
 put(rcc_Import(symboluid(p)));
}
