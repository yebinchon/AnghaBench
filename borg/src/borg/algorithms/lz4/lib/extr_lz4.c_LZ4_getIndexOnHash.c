
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tableType_t ;
typedef unsigned int U32 ;
typedef unsigned int U16 ;


 int LZ4_MEMORY_USAGE ;
 int LZ4_STATIC_ASSERT (int) ;
 int assert (int) ;
 scalar_t__ byU16 ;
 scalar_t__ byU32 ;

__attribute__((used)) static U32 LZ4_getIndexOnHash(U32 h, const void* tableBase, tableType_t tableType)
{
    LZ4_STATIC_ASSERT(LZ4_MEMORY_USAGE > 2);
    if (tableType == byU32) {
        const U32* const hashTable = (const U32*) tableBase;
        assert(h < (1U << (LZ4_MEMORY_USAGE-2)));
        return hashTable[h];
    }
    if (tableType == byU16) {
        const U16* const hashTable = (const U16*) tableBase;
        assert(h < (1U << (LZ4_MEMORY_USAGE-1)));
        return hashTable[h];
    }
    assert(0); return 0;
}
