#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct jpeg_c_coef_controller {int dummy; } ;
typedef  TYPE_3__* my_coef_ptr ;
struct TYPE_11__ {scalar_t__ v_samp_factor; scalar_t__ height_in_blocks; scalar_t__ h_samp_factor; scalar_t__ width_in_blocks; } ;
typedef  TYPE_4__ jpeg_component_info ;
typedef  TYPE_5__* j_compress_ptr ;
typedef  int /*<<< orphan*/  j_common_ptr ;
typedef  scalar_t__ boolean ;
struct TYPE_12__ {int num_components; TYPE_2__* mem; TYPE_4__* comp_info; struct jpeg_c_coef_controller* coef; } ;
struct TYPE_8__ {int /*<<< orphan*/  start_pass; } ;
struct TYPE_10__ {int /*<<< orphan*/ ** whole_image; scalar_t__* MCU_buffer; TYPE_1__ pub; } ;
struct TYPE_9__ {scalar_t__ (* alloc_large ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/ * (* request_virt_barray ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* alloc_small ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  JDIMENSION ;
typedef  scalar_t__ JBLOCKROW ;

/* Variables and functions */
 int C_MAX_BLOCKS_IN_MCU ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JBLOCK ; 
 int /*<<< orphan*/  JERR_BAD_BUFFER_MODE ; 
 int /*<<< orphan*/  JPOOL_IMAGE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (long,long) ; 
 int /*<<< orphan*/  my_coef_controller ; 
 int /*<<< orphan*/  start_pass_coef ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC6 (j_compress_ptr cinfo, boolean need_full_buffer)
{
  my_coef_ptr coef;

  coef = (my_coef_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
				FUNC1(my_coef_controller));
  cinfo->coef = (struct jpeg_c_coef_controller *) coef;
  coef->pub.start_pass = start_pass_coef;

  /* Create the coefficient buffer. */
  if (need_full_buffer) {
#ifdef FULL_COEF_BUFFER_SUPPORTED
    /* Allocate a full-image virtual array for each component, */
    /* padded to a multiple of samp_factor DCT blocks in each direction. */
    int ci;
    jpeg_component_info *compptr;

    for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
	 ci++, compptr++) {
      coef->whole_image[ci] = (*cinfo->mem->request_virt_barray)
	((j_common_ptr) cinfo, JPOOL_IMAGE, FALSE,
	 (JDIMENSION) jround_up((long) compptr->width_in_blocks,
				(long) compptr->h_samp_factor),
	 (JDIMENSION) jround_up((long) compptr->height_in_blocks,
				(long) compptr->v_samp_factor),
	 (JDIMENSION) compptr->v_samp_factor);
    }
#else
    FUNC0(cinfo, JERR_BAD_BUFFER_MODE);
#endif
  } else {
    /* We only need a single-MCU buffer. */
    JBLOCKROW buffer;
    int i;

    buffer = (JBLOCKROW)
      (*cinfo->mem->alloc_large) ((j_common_ptr) cinfo, JPOOL_IMAGE,
				  C_MAX_BLOCKS_IN_MCU * FUNC1(JBLOCK));
    for (i = 0; i < C_MAX_BLOCKS_IN_MCU; i++) {
      coef->MCU_buffer[i] = buffer + i;
    }
    coef->whole_image[0] = NULL; /* flag for no virtual arrays */
  }
}