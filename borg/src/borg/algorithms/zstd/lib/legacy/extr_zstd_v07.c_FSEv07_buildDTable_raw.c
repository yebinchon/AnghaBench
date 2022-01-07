
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ U16 ;
struct TYPE_4__ {int fastMode; scalar_t__ tableLog; } ;
struct TYPE_3__ {void* nbBits; void* symbol; scalar_t__ newState; } ;
typedef TYPE_1__ FSEv07_decode_t ;
typedef TYPE_2__ FSEv07_DTableHeader ;
typedef int FSEv07_DTable ;
typedef void* BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;

size_t FSEv07_buildDTable_raw (FSEv07_DTable* dt, unsigned nbBits)
{
    void* ptr = dt;
    FSEv07_DTableHeader* const DTableH = (FSEv07_DTableHeader*)ptr;
    void* dPtr = dt + 1;
    FSEv07_decode_t* const dinfo = (FSEv07_decode_t*)dPtr;
    const unsigned tableSize = 1 << nbBits;
    const unsigned tableMask = tableSize - 1;
    const unsigned maxSV1 = tableMask+1;
    unsigned s;


    if (nbBits < 1) return ERROR(GENERIC);


    DTableH->tableLog = (U16)nbBits;
    DTableH->fastMode = 1;
    for (s=0; s<maxSV1; s++) {
        dinfo[s].newState = 0;
        dinfo[s].symbol = (BYTE)s;
        dinfo[s].nbBits = (BYTE)nbBits;
    }

    return 0;
}
