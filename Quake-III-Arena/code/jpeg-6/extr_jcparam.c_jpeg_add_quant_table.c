
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* j_compress_ptr ;
typedef int j_common_ptr ;
typedef scalar_t__ boolean ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {int sent_table; scalar_t__* quantval; } ;
struct TYPE_6__ {scalar_t__ global_state; TYPE_2__** quant_tbl_ptrs; } ;
typedef TYPE_2__ JQUANT_TBL ;


 scalar_t__ CSTATE_START ;
 int DCTSIZE2 ;
 int ERREXIT1 (TYPE_1__*,int ,scalar_t__) ;
 int FALSE ;
 int JERR_BAD_STATE ;
 TYPE_2__* jpeg_alloc_quant_table (int ) ;

void
jpeg_add_quant_table (j_compress_ptr cinfo, int which_tbl,
        const unsigned int *basic_table,
        int scale_factor, boolean force_baseline)





{
  JQUANT_TBL ** qtblptr = & cinfo->quant_tbl_ptrs[which_tbl];
  int i;
  long temp;


  if (cinfo->global_state != CSTATE_START)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);

  if (*qtblptr == ((void*)0))
    *qtblptr = jpeg_alloc_quant_table((j_common_ptr) cinfo);

  for (i = 0; i < DCTSIZE2; i++) {
    temp = ((long) basic_table[i] * scale_factor + 50L) / 100L;

    if (temp <= 0L) temp = 1L;
    if (temp > 32767L) temp = 32767L;
    if (force_baseline && temp > 255L)
      temp = 255L;
    (*qtblptr)->quantval[i] = (UINT16) temp;
  }


  (*qtblptr)->sent_table = FALSE;
}
