
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ _key; int _value; } ;
typedef TYPE_1__ unicode_mappings32 ;
typedef int u_int32_t ;
typedef scalar_t__ u_int16_t ;



__attribute__((used)) static inline u_int32_t
getmappedvalue32(const unicode_mappings32 *theTable, u_int32_t numElem,
  u_int16_t character)
{
 const unicode_mappings32 *p, *q, *divider;

 if ((character < theTable[0]._key) || (character > theTable[numElem-1]._key))
  return (0);

 p = theTable;
 q = p + (numElem-1);
 while (p <= q) {
  divider = p + ((q - p) >> 1);
  if (character < divider->_key) { q = divider - 1; }
  else if (character > divider->_key) { p = divider + 1; }
  else { return (divider->_value); }
 }
 return (0);
}
