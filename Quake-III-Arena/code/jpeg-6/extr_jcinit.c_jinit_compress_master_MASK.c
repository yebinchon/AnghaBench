#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* j_compress_ptr ;
typedef  int /*<<< orphan*/  j_common_ptr ;
struct TYPE_19__ {int num_scans; TYPE_2__* marker; TYPE_1__* mem; scalar_t__ optimize_coding; scalar_t__ progressive_mode; scalar_t__ arith_code; int /*<<< orphan*/  raw_data_in; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* write_file_header ) (TYPE_3__*) ;} ;
struct TYPE_17__ {int /*<<< orphan*/  (* realize_virt_arrays ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JERR_ARITH_NOTIMPL ; 
 int /*<<< orphan*/  JERR_NOT_COMPILED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 

void
FUNC13 (j_compress_ptr cinfo)
{
  /* Initialize master control (includes parameter checking/processing) */
  FUNC3(cinfo, FALSE /* full compression */);

  /* Preprocessing */
  if (! cinfo->raw_data_in) {
    FUNC5(cinfo);
    FUNC6(cinfo);
    FUNC4(cinfo, FALSE /* never need full buffer here */);
  }
  /* Forward DCT */
  FUNC7(cinfo);
  /* Entropy encoding: either Huffman or arithmetic coding. */
  if (cinfo->arith_code) {
    FUNC0(cinfo, JERR_ARITH_NOTIMPL);
  } else {
    if (cinfo->progressive_mode) {
#ifdef C_PROGRESSIVE_SUPPORTED
      jinit_phuff_encoder(cinfo);
#else
      FUNC0(cinfo, JERR_NOT_COMPILED);
#endif
    } else
      FUNC8(cinfo);
  }

  /* Need a full-image coefficient buffer in any multi-pass mode. */
  FUNC1(cinfo,
			  (cinfo->num_scans > 1 || cinfo->optimize_coding));
  FUNC2(cinfo, FALSE /* never need full buffer here */);

  FUNC9(cinfo);

  /* We can now tell the memory manager to allocate virtual arrays. */
  (*cinfo->mem->realize_virt_arrays) ((j_common_ptr) cinfo);

  /* Write the datastream header (SOI) immediately.
   * Frame and scan headers are postponed till later.
   * This lets application insert special markers after the SOI.
   */
  (*cinfo->marker->write_file_header) (cinfo);
}