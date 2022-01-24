#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  j_compress_ptr ;
typedef  int /*<<< orphan*/  boolean ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC2 (j_compress_ptr cinfo, int quality, boolean force_baseline)
/* Set or change the 'quality' (quantization) setting, using default tables.
 * This is the standard quality-adjusting entry point for typical user
 * interfaces; only those who want detailed control over quantization tables
 * would use the preceding three routines directly.
 */
{
  /* Convert user 0-100 rating to percentage scaling */
  quality = FUNC0(quality);

  /* Set up standard quality tables */
  FUNC1(cinfo, quality, force_baseline);
}