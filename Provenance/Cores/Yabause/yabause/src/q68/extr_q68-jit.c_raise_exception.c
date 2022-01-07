
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Q68State ;


 int JIT_EMIT_EXCEPTION (int ,int ) ;
 int current_entry ;

__attribute__((used)) static int raise_exception(Q68State *state, uint8_t num)
{
    JIT_EMIT_EXCEPTION(current_entry, num);
    return 1;
}
