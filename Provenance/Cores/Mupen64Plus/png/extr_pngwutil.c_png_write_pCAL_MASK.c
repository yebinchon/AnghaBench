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
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/  png_structrp ;
typedef  scalar_t__* png_size_tp ;
typedef  scalar_t__ png_size_t ;
typedef  int /*<<< orphan*/  png_int_32 ;
typedef  scalar_t__ png_const_charp ;
typedef  scalar_t__* png_const_bytep ;
typedef  scalar_t__* png_charpp ;
typedef  int /*<<< orphan*/  png_charp ;
typedef  scalar_t__ png_byte ;
typedef  int png_alloc_size_t ;

/* Variables and functions */
 int PNG_EQUATION_LAST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  png_pCAL ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

void /* PRIVATE */
FUNC11(png_structrp png_ptr, png_charp purpose, png_int_32 X0,
    png_int_32 X1, int type, int nparams, png_const_charp units,
    png_charpp params)
{
   png_uint_32 purpose_len;
   png_size_t units_len, total_len;
   png_size_tp params_len;
   png_byte buf[10];
   png_byte new_purpose[80];
   int i;

   FUNC1(1, "in png_write_pCAL (%d parameters)", nparams);

   if (type >= PNG_EQUATION_LAST)
      FUNC3(png_ptr, "Unrecognized equation type for pCAL chunk");

   purpose_len = FUNC0(png_ptr, purpose, new_purpose);

   if (purpose_len == 0)
      FUNC3(png_ptr, "pCAL: invalid keyword");

   ++purpose_len; /* terminator */

   FUNC1(3, "pCAL purpose length = %d", (int)purpose_len);
   units_len = FUNC10(units) + (nparams == 0 ? 0 : 1);
   FUNC1(3, "pCAL units length = %d", (int)units_len);
   total_len = purpose_len + units_len + 10;

   params_len = (png_size_tp)FUNC5(png_ptr,
       (png_alloc_size_t)((png_alloc_size_t)nparams * (sizeof (png_size_t))));

   /* Find the length of each parameter, making sure we don't count the
    * null terminator for the last parameter.
    */
   for (i = 0; i < nparams; i++)
   {
      params_len[i] = FUNC10(params[i]) + (i == nparams - 1 ? 0 : 1);
      FUNC2(3, "pCAL parameter %d length = %lu", i,
          (unsigned long)params_len[i]);
      total_len += params_len[i];
   }

   FUNC1(3, "pCAL total length = %d", (int)total_len);
   FUNC9(png_ptr, png_pCAL, (png_uint_32)total_len);
   FUNC7(png_ptr, new_purpose, purpose_len);
   FUNC6(buf, X0);
   FUNC6(buf + 4, X1);
   buf[8] = (png_byte)type;
   buf[9] = (png_byte)nparams;
   FUNC7(png_ptr, buf, (png_size_t)10);
   FUNC7(png_ptr, (png_const_bytep)units, (png_size_t)units_len);

   for (i = 0; i < nparams; i++)
   {
      FUNC7(png_ptr, (png_const_bytep)params[i], params_len[i]);
   }

   FUNC4(png_ptr, params_len);
   FUNC8(png_ptr);
}