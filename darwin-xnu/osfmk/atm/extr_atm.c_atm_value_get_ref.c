
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atm_value_t ;


 int atm_value_reference_internal (int ) ;

__attribute__((used)) static void
atm_value_get_ref(atm_value_t atm_value)
{
 atm_value_reference_internal(atm_value);
}
