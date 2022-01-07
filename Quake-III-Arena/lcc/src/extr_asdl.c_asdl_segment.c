
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put (int ) ;
 int rcc_Segment (int) ;

__attribute__((used)) static void asdl_segment(int n) {
 static int cseg;

 if (cseg != n)
  put(rcc_Segment(cseg = n));
}
