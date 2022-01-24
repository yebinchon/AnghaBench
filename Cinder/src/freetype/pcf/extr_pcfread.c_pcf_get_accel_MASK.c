#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int fontAscent; int fontDescent; int /*<<< orphan*/  maxbounds; int /*<<< orphan*/  ink_maxbounds; int /*<<< orphan*/  minbounds; int /*<<< orphan*/  ink_minbounds; int /*<<< orphan*/  maxOverlap; scalar_t__ drawDirection; scalar_t__ inkMetrics; scalar_t__ inkInside; scalar_t__ constantWidth; scalar_t__ terminalFont; scalar_t__ constantMetrics; scalar_t__ noOverlap; } ;
struct TYPE_6__ {int /*<<< orphan*/  count; int /*<<< orphan*/  tables; } ;
struct TYPE_7__ {TYPE_1__ toc; TYPE_3__ accel; } ;
typedef  TYPE_2__* PCF_Face ;
typedef  TYPE_3__* PCF_Accel ;
typedef  scalar_t__ FT_ULong ;
typedef  int /*<<< orphan*/  FT_Stream ;
typedef  scalar_t__ FT_Error ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ MSBFirst ; 
 int /*<<< orphan*/  PCF_ACCEL_W_INKBOUNDS ; 
 scalar_t__ PCF_BDF_ACCELERATORS ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  PCF_DEFAULT_FORMAT ; 
 scalar_t__ PCF_FORMAT_MASK ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcf_accel_header ; 
 int /*<<< orphan*/  pcf_accel_msb_header ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static FT_Error
  FUNC10( FT_Stream  stream,
                 PCF_Face   face,
                 FT_ULong   type )
  {
    FT_ULong   format, size;
    FT_Error   error;
    PCF_Accel  accel = &face->accel;


    error = FUNC9( stream,
                                    face->toc.tables,
                                    face->toc.count,
                                    type,
                                    &format,
                                    &size );
    if ( error )
      goto Bail;

    if ( FUNC1( format ) )
      goto Bail;

    FUNC4(( "pcf_get_accel%s:\n"
                "  format: 0x%lX (%s, %s)\n",
                type == PCF_BDF_ACCELERATORS ? " (getting BDF accelerators)"
                                             : "",
                format,
                FUNC6( format ) == MSBFirst ? "MSB" : "LSB",
                FUNC7( format, PCF_ACCEL_W_INKBOUNDS ) ?
                  "accelerated" : "not accelerated" ));

    if ( !FUNC7( format, PCF_DEFAULT_FORMAT )    &&
         !FUNC7( format, PCF_ACCEL_W_INKBOUNDS ) )
      goto Bail;

    if ( FUNC6( format ) == MSBFirst )
    {
      if ( FUNC2( pcf_accel_msb_header, accel ) )
        goto Bail;
    }
    else
    {
      if ( FUNC2( pcf_accel_header, accel ) )
        goto Bail;
    }

    FUNC5(( "  noOverlap=%s, constantMetrics=%s,"
                " terminalFont=%s, constantWidth=%s\n"
                "  inkInside=%s, inkMetrics=%s, drawDirection=%s\n"
                "  fontAscent=%ld, fontDescent=%ld, maxOverlap=%ld\n",
                accel->noOverlap ? "yes" : "no",
                accel->constantMetrics ? "yes" : "no",
                accel->terminalFont ? "yes" : "no",
                accel->constantWidth ? "yes" : "no",
                accel->inkInside ? "yes" : "no",
                accel->inkMetrics ? "yes" : "no",
                accel->drawDirection ? "RTL" : "LTR",
                accel->fontAscent,
                accel->fontDescent,
                accel->maxOverlap ));

    /* sanity checks */
    if ( FUNC0( accel->fontAscent ) > 0x7FFF )
    {
      accel->fontAscent = accel->fontAscent < 0 ? -0x7FFF : 0x7FFF;
      FUNC3(( "pfc_get_accel: clamping font ascent to value %d\n",
                  accel->fontAscent ));
    }
    if ( FUNC0( accel->fontDescent ) > 0x7FFF )
    {
      accel->fontDescent = accel->fontDescent < 0 ? -0x7FFF : 0x7FFF;
      FUNC3(( "pfc_get_accel: clamping font descent to value %d\n",
                  accel->fontDescent ));
    }

    FUNC5(( "  minbounds:" ));
    error = FUNC8( stream,
                            format & ( ~PCF_FORMAT_MASK ),
                            &(accel->minbounds) );
    if ( error )
      goto Bail;

    FUNC5(( "  maxbounds:" ));
    error = FUNC8( stream,
                            format & ( ~PCF_FORMAT_MASK ),
                            &(accel->maxbounds) );
    if ( error )
      goto Bail;

    if ( FUNC7( format, PCF_ACCEL_W_INKBOUNDS ) )
    {
      FUNC5(( "  ink minbounds:" ));
      error = FUNC8( stream,
                              format & ( ~PCF_FORMAT_MASK ),
                              &(accel->ink_minbounds) );
      if ( error )
        goto Bail;

      FUNC5(( "  ink maxbounds:" ));
      error = FUNC8( stream,
                              format & ( ~PCF_FORMAT_MASK ),
                              &(accel->ink_maxbounds) );
      if ( error )
        goto Bail;
    }
    else
    {
      accel->ink_minbounds = accel->minbounds;
      accel->ink_maxbounds = accel->maxbounds;
    }

  Bail:
    return error;
  }