
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InstImm (int ,int ,int ,int ) ;
 int PPC_LWZ ;
 int R_OPSTACK ;
 int R_TOP ;
 scalar_t__ qfalse ;
 scalar_t__ rtopped ;

__attribute__((used)) static void ltop() {
    if (rtopped == qfalse) {
 InstImm( PPC_LWZ, R_TOP, R_OPSTACK, 0 );
    }
}
