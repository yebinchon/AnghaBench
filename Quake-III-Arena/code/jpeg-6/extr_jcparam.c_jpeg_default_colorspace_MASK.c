#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* j_compress_ptr ;
struct TYPE_5__ {int in_color_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  JCS_CMYK 133 
#define  JCS_GRAYSCALE 132 
#define  JCS_RGB 131 
#define  JCS_UNKNOWN 130 
#define  JCS_YCCK 129 
#define  JCS_YCbCr 128 
 int /*<<< orphan*/  JERR_BAD_IN_COLORSPACE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int const) ; 

void
FUNC2 (j_compress_ptr cinfo)
{
  switch (cinfo->in_color_space) {
  case JCS_GRAYSCALE:
    FUNC1(cinfo, JCS_GRAYSCALE);
    break;
  case JCS_RGB:
    FUNC1(cinfo, JCS_YCbCr);
    break;
  case JCS_YCbCr:
    FUNC1(cinfo, JCS_YCbCr);
    break;
  case JCS_CMYK:
    FUNC1(cinfo, JCS_CMYK); /* By default, no translation */
    break;
  case JCS_YCCK:
    FUNC1(cinfo, JCS_YCCK);
    break;
  case JCS_UNKNOWN:
    FUNC1(cinfo, JCS_UNKNOWN);
    break;
  default:
    FUNC0(cinfo, JERR_BAD_IN_COLORSPACE);
  }
}