
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_TESTPRINTINT ;
 int syscall (int ,char*,int) ;

void testPrintInt( char *string, int i ) {
 syscall( CG_TESTPRINTINT, string, i );
}
