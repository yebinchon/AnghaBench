
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ** tBTA_SYS_ID ;
typedef int UINT8 ;
typedef int * UINT32 ;
typedef int BOOLEAN ;


 int TRUE ;
 int UNUSED (int **) ;

BOOLEAN bta_dm_co_get_compress_memory(tBTA_SYS_ID id, UINT8 **memory_p, UINT32 *memory_size)
{
    UNUSED(id);
    UNUSED(memory_p);
    UNUSED(memory_size);
    return TRUE;
}
