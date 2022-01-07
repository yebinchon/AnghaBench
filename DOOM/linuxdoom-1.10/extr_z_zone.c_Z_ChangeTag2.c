
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; int tag; scalar_t__ user; } ;
typedef TYPE_1__ memblock_t ;
typedef int byte ;


 int I_Error (char*) ;
 int PU_PURGELEVEL ;
 scalar_t__ ZONEID ;

void
Z_ChangeTag2
( void* ptr,
  int tag )
{
    memblock_t* block;

    block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));

    if (block->id != ZONEID)
 I_Error ("Z_ChangeTag: freed a pointer without ZONEID");

    if (tag >= PU_PURGELEVEL && (unsigned)block->user < 0x100)
 I_Error ("Z_ChangeTag: an owner is required for purgable blocks");

    block->tag = tag;
}
