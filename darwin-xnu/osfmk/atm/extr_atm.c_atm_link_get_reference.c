
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atm_link_object_t ;


 int atm_link_object_reference_internal (int ) ;

__attribute__((used)) static void
atm_link_get_reference(atm_link_object_t link_object)
{
 atm_link_object_reference_internal(link_object);
}
