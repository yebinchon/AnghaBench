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
typedef  void* FT_ULong ;
typedef  int FT_UInt ;
typedef  int FT_Long ;
typedef  int FT_Byte ;
typedef  scalar_t__ FT_Bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int PFR_BITMAP_2BYTE_CHARCODE ; 
 int PFR_BITMAP_2BYTE_SIZE ; 
 int PFR_BITMAP_3BYTE_OFFSET ; 
 int PFR_BITMAP_CHARCODES_VALIDATED ; 
 int PFR_BITMAP_VALID_CHARCODES ; 
 void* FUNC3 (int*) ; 
 void* FUNC4 (int*) ; 
 void* FUNC5 (int*) ; 

__attribute__((used)) static void
  FUNC6( FT_Byte*   base,
                          FT_Byte*   limit,
                          FT_UInt    count,
                          FT_UInt*   flags,
                          FT_UInt    char_code,
                          FT_ULong*  found_offset,
                          FT_ULong*  found_size )
  {
    FT_UInt   min, max, char_len;
    FT_Bool   two = FUNC0( *flags & PFR_BITMAP_2BYTE_CHARCODE );
    FT_Byte*  buff;


    char_len = 4;
    if ( two )
      char_len += 1;
    if ( *flags & PFR_BITMAP_2BYTE_SIZE )
      char_len += 1;
    if ( *flags & PFR_BITMAP_3BYTE_OFFSET )
      char_len += 1;

    if ( !( *flags & PFR_BITMAP_CHARCODES_VALIDATED ) )
    {
      FT_Byte*  p;
      FT_Byte*  lim;
      FT_UInt   code;
      FT_Long   prev_code;


      *flags    |= PFR_BITMAP_VALID_CHARCODES;
      prev_code  = -1;
      lim        = base + count * char_len;

      if ( lim > limit )
      {
        FUNC2(( "pfr_lookup_bitmap_data:"
                    " number of bitmap records too large,\n"
                    "                       "
                    " thus ignoring all bitmaps in this strike\n" ));
        *flags &= ~PFR_BITMAP_VALID_CHARCODES;
      }
      else
      {
        /* check whether records are sorted by code */
        for ( p = base; p < lim; p += char_len )
        {
          if ( two )
            code = FUNC1( p );
          else
            code = *p;

          if ( (FT_Long)code <= prev_code )
          {
            FUNC2(( "pfr_lookup_bitmap_data:"
                        " bitmap records are not sorted,\n"
                        "                       "
                        " thus ignoring all bitmaps in this strike\n" ));
            *flags &= ~PFR_BITMAP_VALID_CHARCODES;
            break;
          }

          prev_code = code;
        }
      }

      *flags |= PFR_BITMAP_CHARCODES_VALIDATED;
    }

    /* ignore bitmaps in case table is not valid     */
    /* (this might be sanitized, but PFR is dead...) */
    if ( !( *flags & PFR_BITMAP_VALID_CHARCODES ) )
      goto Fail;

    min = 0;
    max = count;

    /* binary search */
    while ( min < max )
    {
      FT_UInt  mid, code;


      mid  = ( min + max ) >> 1;
      buff = base + mid * char_len;

      if ( two )
        code = FUNC5( buff );
      else
        code = FUNC3( buff );

      if ( char_code < code )
        max = mid;
      else if ( char_code > code )
        min = mid + 1;
      else
        goto Found_It;
    }

  Fail:
    /* Not found */
    *found_size   = 0;
    *found_offset = 0;
    return;

  Found_It:
    if ( *flags & PFR_BITMAP_2BYTE_SIZE )
      *found_size = FUNC5( buff );
    else
      *found_size = FUNC3( buff );

    if ( *flags & PFR_BITMAP_3BYTE_OFFSET )
      *found_offset = FUNC4( buff );
    else
      *found_offset = FUNC5( buff );
  }