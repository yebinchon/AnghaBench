
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dtrace_vstate_t ;
typedef int dtrace_mstate_t ;


 int dtrace_canstore_remains (int ,size_t,int *,int *,int *) ;

__attribute__((used)) static int
dtrace_canstore(uint64_t addr, size_t sz, dtrace_mstate_t *mstate,
    dtrace_vstate_t *vstate)
{
 return (dtrace_canstore_remains(addr, sz, ((void*)0), mstate, vstate));
}
