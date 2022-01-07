
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;


 scalar_t__ clk ;
 int internal_refresh () ;
 int makeAdjustTable () ;
 int makeAmTable () ;
 int makeDB2LinTable () ;
 int makePmTable () ;
 int makeRksTable () ;
 int makeSinTable () ;
 int makeTllTable () ;
 scalar_t__ rate ;

__attribute__((used)) static void maketables(uint32 c, uint32 r) {
 if (c != clk) {
  clk = c;
  makePmTable();
  makeAmTable();
  makeDB2LinTable();
  makeAdjustTable();
  makeTllTable();
  makeRksTable();
  makeSinTable();

 }

 if (r != rate) {
  rate = r;
  internal_refresh();
 }
}
