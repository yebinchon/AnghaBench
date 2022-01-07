
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Symbol ;


 int put (int ) ;
 int rcc_Export (int ) ;
 int symboluid (int ) ;

__attribute__((used)) static void asdl_export(Symbol p) {
 put(rcc_Export(symboluid(p)));
}
