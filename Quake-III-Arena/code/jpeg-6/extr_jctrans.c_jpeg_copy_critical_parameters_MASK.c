#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int quant_tbl_no; TYPE_4__* quant_table; int /*<<< orphan*/  v_samp_factor; int /*<<< orphan*/  h_samp_factor; int /*<<< orphan*/  component_id; } ;
typedef  TYPE_1__ jpeg_component_info ;
typedef  TYPE_2__* j_decompress_ptr ;
typedef  TYPE_3__* j_compress_ptr ;
typedef  int /*<<< orphan*/  j_common_ptr ;
struct TYPE_15__ {scalar_t__* quantval; int /*<<< orphan*/  sent_table; } ;
struct TYPE_14__ {scalar_t__ global_state; int input_components; int num_components; TYPE_1__* comp_info; TYPE_4__** quant_tbl_ptrs; int /*<<< orphan*/  CCIR601_sampling; int /*<<< orphan*/  data_precision; int /*<<< orphan*/  in_color_space; int /*<<< orphan*/  image_height; int /*<<< orphan*/  image_width; } ;
struct TYPE_13__ {int num_components; TYPE_4__** quant_tbl_ptrs; TYPE_1__* comp_info; int /*<<< orphan*/  CCIR601_sampling; int /*<<< orphan*/  data_precision; int /*<<< orphan*/  jpeg_color_space; int /*<<< orphan*/  image_height; int /*<<< orphan*/  image_width; } ;
typedef  TYPE_4__ JQUANT_TBL ;

/* Variables and functions */
 scalar_t__ CSTATE_START ; 
 int DCTSIZE2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JERR_BAD_STATE ; 
 int /*<<< orphan*/  JERR_COMPONENT_COUNT ; 
 int /*<<< orphan*/  JERR_MISMATCHED_QUANT_TABLE ; 
 int /*<<< orphan*/  JERR_NO_QUANT_TABLE ; 
 int MAX_COMPONENTS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int NUM_QUANT_TBLS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

void
FUNC7 (j_decompress_ptr srcinfo,
			       j_compress_ptr dstinfo)
{
  JQUANT_TBL ** qtblptr;
  jpeg_component_info *incomp, *outcomp;
  JQUANT_TBL *c_quant, *slot_quant;
  int tblno, ci, coefi;

  /* Safety check to ensure start_compress not called yet. */
  if (dstinfo->global_state != CSTATE_START)
    FUNC0(dstinfo, JERR_BAD_STATE, dstinfo->global_state);
  /* Copy fundamental image dimensions */
  dstinfo->image_width = srcinfo->image_width;
  dstinfo->image_height = srcinfo->image_height;
  dstinfo->input_components = srcinfo->num_components;
  dstinfo->in_color_space = srcinfo->jpeg_color_space;
  /* Initialize all parameters to default values */
  FUNC6(dstinfo);
  /* jpeg_set_defaults may choose wrong colorspace, eg YCbCr if input is RGB.
   * Fix it to get the right header markers for the image colorspace.
   */
  FUNC5(dstinfo, srcinfo->jpeg_color_space);
  dstinfo->data_precision = srcinfo->data_precision;
  dstinfo->CCIR601_sampling = srcinfo->CCIR601_sampling;
  /* Copy the source's quantization tables. */
  for (tblno = 0; tblno < NUM_QUANT_TBLS; tblno++) {
    if (srcinfo->quant_tbl_ptrs[tblno] != NULL) {
      qtblptr = & dstinfo->quant_tbl_ptrs[tblno];
      if (*qtblptr == NULL)
	*qtblptr = FUNC4((j_common_ptr) dstinfo);
      FUNC2((*qtblptr)->quantval,
	      srcinfo->quant_tbl_ptrs[tblno]->quantval,
	      FUNC3((*qtblptr)->quantval));
      (*qtblptr)->sent_table = FALSE;
    }
  }
  /* Copy the source's per-component info.
   * Note we assume jpeg_set_defaults has allocated the dest comp_info array.
   */
  dstinfo->num_components = srcinfo->num_components;
  if (dstinfo->num_components < 1 || dstinfo->num_components > MAX_COMPONENTS)
    FUNC1(dstinfo, JERR_COMPONENT_COUNT, dstinfo->num_components,
	     MAX_COMPONENTS);
  for (ci = 0, incomp = srcinfo->comp_info, outcomp = dstinfo->comp_info;
       ci < dstinfo->num_components; ci++, incomp++, outcomp++) {
    outcomp->component_id = incomp->component_id;
    outcomp->h_samp_factor = incomp->h_samp_factor;
    outcomp->v_samp_factor = incomp->v_samp_factor;
    outcomp->quant_tbl_no = incomp->quant_tbl_no;
    /* Make sure saved quantization table for component matches the qtable
     * slot.  If not, the input file re-used this qtable slot.
     * IJG encoder currently cannot duplicate this.
     */
    tblno = outcomp->quant_tbl_no;
    if (tblno < 0 || tblno >= NUM_QUANT_TBLS ||
	srcinfo->quant_tbl_ptrs[tblno] == NULL)
      FUNC0(dstinfo, JERR_NO_QUANT_TABLE, tblno);
    slot_quant = srcinfo->quant_tbl_ptrs[tblno];
    c_quant = incomp->quant_table;
    if (c_quant != NULL) {
      for (coefi = 0; coefi < DCTSIZE2; coefi++) {
	if (c_quant->quantval[coefi] != slot_quant->quantval[coefi])
	  FUNC0(dstinfo, JERR_MISMATCHED_QUANT_TABLE, tblno);
      }
    }
    /* Note: we do not copy the source's Huffman table assignments;
     * instead we rely on jpeg_set_colorspace to have made a suitable choice.
     */
  }
}