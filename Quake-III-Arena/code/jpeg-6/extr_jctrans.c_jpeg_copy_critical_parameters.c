
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int quant_tbl_no; TYPE_4__* quant_table; int v_samp_factor; int h_samp_factor; int component_id; } ;
typedef TYPE_1__ jpeg_component_info ;
typedef TYPE_2__* j_decompress_ptr ;
typedef TYPE_3__* j_compress_ptr ;
typedef int j_common_ptr ;
struct TYPE_15__ {scalar_t__* quantval; int sent_table; } ;
struct TYPE_14__ {scalar_t__ global_state; int input_components; int num_components; TYPE_1__* comp_info; TYPE_4__** quant_tbl_ptrs; int CCIR601_sampling; int data_precision; int in_color_space; int image_height; int image_width; } ;
struct TYPE_13__ {int num_components; TYPE_4__** quant_tbl_ptrs; TYPE_1__* comp_info; int CCIR601_sampling; int data_precision; int jpeg_color_space; int image_height; int image_width; } ;
typedef TYPE_4__ JQUANT_TBL ;


 scalar_t__ CSTATE_START ;
 int DCTSIZE2 ;
 int ERREXIT1 (TYPE_3__*,int ,int) ;
 int ERREXIT2 (TYPE_3__*,int ,int,int) ;
 int FALSE ;
 int JERR_BAD_STATE ;
 int JERR_COMPONENT_COUNT ;
 int JERR_MISMATCHED_QUANT_TABLE ;
 int JERR_NO_QUANT_TABLE ;
 int MAX_COMPONENTS ;
 int MEMCOPY (scalar_t__*,scalar_t__*,int ) ;
 int NUM_QUANT_TBLS ;
 int SIZEOF (scalar_t__*) ;
 TYPE_4__* jpeg_alloc_quant_table (int ) ;
 int jpeg_set_colorspace (TYPE_3__*,int ) ;
 int jpeg_set_defaults (TYPE_3__*) ;

void
jpeg_copy_critical_parameters (j_decompress_ptr srcinfo,
          j_compress_ptr dstinfo)
{
  JQUANT_TBL ** qtblptr;
  jpeg_component_info *incomp, *outcomp;
  JQUANT_TBL *c_quant, *slot_quant;
  int tblno, ci, coefi;


  if (dstinfo->global_state != CSTATE_START)
    ERREXIT1(dstinfo, JERR_BAD_STATE, dstinfo->global_state);

  dstinfo->image_width = srcinfo->image_width;
  dstinfo->image_height = srcinfo->image_height;
  dstinfo->input_components = srcinfo->num_components;
  dstinfo->in_color_space = srcinfo->jpeg_color_space;

  jpeg_set_defaults(dstinfo);



  jpeg_set_colorspace(dstinfo, srcinfo->jpeg_color_space);
  dstinfo->data_precision = srcinfo->data_precision;
  dstinfo->CCIR601_sampling = srcinfo->CCIR601_sampling;

  for (tblno = 0; tblno < NUM_QUANT_TBLS; tblno++) {
    if (srcinfo->quant_tbl_ptrs[tblno] != ((void*)0)) {
      qtblptr = & dstinfo->quant_tbl_ptrs[tblno];
      if (*qtblptr == ((void*)0))
 *qtblptr = jpeg_alloc_quant_table((j_common_ptr) dstinfo);
      MEMCOPY((*qtblptr)->quantval,
       srcinfo->quant_tbl_ptrs[tblno]->quantval,
       SIZEOF((*qtblptr)->quantval));
      (*qtblptr)->sent_table = FALSE;
    }
  }



  dstinfo->num_components = srcinfo->num_components;
  if (dstinfo->num_components < 1 || dstinfo->num_components > MAX_COMPONENTS)
    ERREXIT2(dstinfo, JERR_COMPONENT_COUNT, dstinfo->num_components,
      MAX_COMPONENTS);
  for (ci = 0, incomp = srcinfo->comp_info, outcomp = dstinfo->comp_info;
       ci < dstinfo->num_components; ci++, incomp++, outcomp++) {
    outcomp->component_id = incomp->component_id;
    outcomp->h_samp_factor = incomp->h_samp_factor;
    outcomp->v_samp_factor = incomp->v_samp_factor;
    outcomp->quant_tbl_no = incomp->quant_tbl_no;




    tblno = outcomp->quant_tbl_no;
    if (tblno < 0 || tblno >= NUM_QUANT_TBLS ||
 srcinfo->quant_tbl_ptrs[tblno] == ((void*)0))
      ERREXIT1(dstinfo, JERR_NO_QUANT_TABLE, tblno);
    slot_quant = srcinfo->quant_tbl_ptrs[tblno];
    c_quant = incomp->quant_table;
    if (c_quant != ((void*)0)) {
      for (coefi = 0; coefi < DCTSIZE2; coefi++) {
 if (c_quant->quantval[coefi] != slot_quant->quantval[coefi])
   ERREXIT1(dstinfo, JERR_MISMATCHED_QUANT_TABLE, tblno);
      }
    }



  }
}
