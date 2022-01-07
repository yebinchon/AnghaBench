
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_7__ {int iram_dirty; void* ptr_btable_iram; void* ptr_btable; void* ptr_dram; void* ptr_iram_rom; void* ptr_rom; scalar_t__ iram_context; } ;
struct TYPE_8__ {TYPE_1__ drc; } ;
typedef TYPE_2__ ssp1601_t ;
struct TYPE_10__ {scalar_t__ rom; } ;
struct TYPE_9__ {scalar_t__ iram_rom; scalar_t__ dram; } ;


 TYPE_6__ Pico ;
 int memset (scalar_t__,int ,int) ;
 int ssp1601_reset (TYPE_2__*) ;
 scalar_t__ ssp_block_table ;
 scalar_t__ ssp_block_table_iram ;
 TYPE_3__* svp ;

void ssp1601_dyn_reset(ssp1601_t *ssp)
{
 ssp1601_reset(ssp);
 ssp->drc.iram_dirty = 1;
 ssp->drc.iram_context = 0;

 ssp->drc.ptr_rom = (u32) Pico.rom;
 ssp->drc.ptr_iram_rom = (u32) svp->iram_rom;
 ssp->drc.ptr_dram = (u32) svp->dram;
 ssp->drc.ptr_btable = (u32) ssp_block_table;
 ssp->drc.ptr_btable_iram = (u32) ssp_block_table_iram;


 memset(svp->iram_rom, 0, 0x800);
}
