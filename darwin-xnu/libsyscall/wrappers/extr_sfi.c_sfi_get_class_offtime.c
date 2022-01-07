
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sfi_class_id_t ;


 int SFI_CTL_OPERATION_GET_CLASS_OFFTIME ;
 int __sfi_ctl (int ,int ,int ,int *) ;

int sfi_get_class_offtime(sfi_class_id_t class_id, uint64_t *offtime_usec)
{
 return __sfi_ctl(SFI_CTL_OPERATION_GET_CLASS_OFFTIME, class_id, 0, offtime_usec);
}
