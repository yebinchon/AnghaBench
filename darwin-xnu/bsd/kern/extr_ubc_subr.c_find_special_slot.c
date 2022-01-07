
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {int hashOffset; int nSpecialSlots; } ;
typedef TYPE_1__ CS_CodeDirectory ;


 int ntohl (int ) ;

__attribute__((used)) static const uint8_t *
find_special_slot(const CS_CodeDirectory *cd, size_t slotsize, uint32_t slot)
{

 if (ntohl(cd->nSpecialSlots) < slot || slot == 0)
  return ((void*)0);

 return ((const uint8_t *)cd + ntohl(cd->hashOffset) - (slotsize * slot));
}
