
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drc_cmn_cleanup () ;
 int free (int *) ;
 int * ssp_block_table ;
 int * ssp_block_table_iram ;

void ssp1601_dyn_exit(void)
{
 free(ssp_block_table);
 free(ssp_block_table_iram);
 ssp_block_table = ssp_block_table_iram = ((void*)0);

 drc_cmn_cleanup();
}
