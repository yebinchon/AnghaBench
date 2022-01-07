
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hard_trap_info {scalar_t__ tt; scalar_t__ signo; } ;
typedef scalar_t__ s32 ;


 scalar_t__ SIGHUP ;
 struct hard_trap_info* hard_trap_info ;

__attribute__((used)) static s32 computeSignal(s32 excpt)
{
 struct hard_trap_info *ht;
 for(ht = hard_trap_info;ht->tt && ht->signo;ht++) {
  if(ht->tt==excpt) return ht->signo;
 }
 return SIGHUP;
}
