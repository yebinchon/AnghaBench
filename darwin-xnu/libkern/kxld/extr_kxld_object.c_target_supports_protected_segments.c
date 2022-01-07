
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ cputype; scalar_t__ is_final_image; } ;
typedef TYPE_1__ KXLDObject ;


 scalar_t__ CPU_TYPE_ARM ;
 scalar_t__ CPU_TYPE_ARM64 ;
 scalar_t__ CPU_TYPE_X86_64 ;

__attribute__((used)) static boolean_t
target_supports_protected_segments(const KXLDObject *object)
{
    return (object->is_final_image &&
            (object->cputype == CPU_TYPE_X86_64 ||
             object->cputype == CPU_TYPE_ARM ||
             object->cputype == CPU_TYPE_ARM64));
}
