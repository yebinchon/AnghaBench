
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tableType_t ;
typedef size_t U32 ;
typedef int U16 ;


 int assert (int) ;





__attribute__((used)) static void LZ4_putIndexOnHash(U32 idx, U32 h, void* tableBase, tableType_t const tableType)
{
    switch (tableType)
    {
    default:
    case 128:
    case 131: { assert(0); return; }
    case 129: { U32* hashTable = (U32*) tableBase; hashTable[h] = idx; return; }
    case 130: { U16* hashTable = (U16*) tableBase; assert(idx < 65536); hashTable[h] = (U16)idx; return; }
    }
}
