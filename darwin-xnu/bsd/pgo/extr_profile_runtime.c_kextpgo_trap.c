
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int DBOP_RESET_PGO_COUNTERS ;
 int DebuggerTrapWithState (int ,int *,int *,int *,int ,int *,int ,int ) ;
 int FALSE ;

__attribute__((used)) static kern_return_t
kextpgo_trap()
{
    return DebuggerTrapWithState(DBOP_RESET_PGO_COUNTERS, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), FALSE, 0);
}
