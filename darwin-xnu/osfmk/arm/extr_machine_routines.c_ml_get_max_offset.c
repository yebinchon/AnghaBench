
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef int boolean_t ;


 unsigned int ARM_PMAP_MAX_OFFSET_DEFAULT ;
 unsigned int ARM_PMAP_MAX_OFFSET_DEVICE ;
 unsigned int ARM_PMAP_MAX_OFFSET_MAX ;
 unsigned int ARM_PMAP_MAX_OFFSET_MIN ;




 int panic (char*,unsigned int) ;
 int pmap_max_offset (int ,unsigned int) ;

vm_map_offset_t
ml_get_max_offset(
 boolean_t is64,
 unsigned int option)
{
 unsigned int pmap_max_offset_option = 0;

 switch (option) {
 case 131:
  pmap_max_offset_option = ARM_PMAP_MAX_OFFSET_DEFAULT;
                break;
        case 128:
  pmap_max_offset_option = ARM_PMAP_MAX_OFFSET_MIN;
                break;
        case 129:
  pmap_max_offset_option = ARM_PMAP_MAX_OFFSET_MAX;
                break;
        case 130:
  pmap_max_offset_option = ARM_PMAP_MAX_OFFSET_DEVICE;
                break;
        default:
  panic("ml_get_max_offset(): Illegal option 0x%x\n", option);
                break;
        }
 return pmap_max_offset(is64, pmap_max_offset_option);
}
