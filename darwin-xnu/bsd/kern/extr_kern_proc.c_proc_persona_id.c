
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int proc_t ;


 int persona_id_from_proc (int ) ;

uint32_t
proc_persona_id(proc_t p)
{
 return (uint32_t)persona_id_from_proc(p);
}
