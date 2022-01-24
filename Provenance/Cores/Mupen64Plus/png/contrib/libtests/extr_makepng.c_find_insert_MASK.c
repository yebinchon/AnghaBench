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
typedef  int png_uint_32 ;
typedef  int* png_const_charp ;
typedef  int /*<<< orphan*/  png_charp ;
typedef  int /*<<< orphan*/  chunk_insert ;

/* Variables and functions */
 int FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  insert_hIST ; 
 int /*<<< orphan*/  insert_iCCP ; 
 int /*<<< orphan*/  insert_iTXt ; 
 int /*<<< orphan*/  insert_sBIT ; 
 int /*<<< orphan*/  insert_sPLT ; 
 int /*<<< orphan*/  insert_tEXt ; 
 int /*<<< orphan*/  insert_zTXt ; 
 int /*<<< orphan*/ * FUNC5 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static chunk_insert *
FUNC6(png_const_charp what, png_charp param)
{
   png_uint_32 chunk = 0;
   png_charp parameter_list[1024];
   int i, nparams;

   /* Assemble the chunk name */
   for (i=0; i<4; ++i)
   {
      char ch = what[i];

      if ((ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122))
         chunk = (chunk << 8) + what[i];

      else
         break;
   }

   if (i < 4 || what[4] != 0)
   {
      FUNC4(stderr, "makepng --insert \"%s\": invalid chunk name\n", what);
      FUNC2(1);
   }

   /* Assemble the parameter list. */
   nparams = FUNC3(what, param, parameter_list, 1024);

#  define CHUNK(a,b,c,d) (((a)<<24)+((b)<<16)+((c)<<8)+(d))

   switch (chunk)
   {
      case CHUNK(105,67,67,80):  /* iCCP */
         if (nparams == 2)
            return FUNC5(what, insert_iCCP, nparams, parameter_list);
         break;

      case CHUNK(116,69,88,116): /* tEXt */
         if (nparams == 2)
            return FUNC5(what, insert_tEXt, nparams, parameter_list);
         break;

      case CHUNK(122,84,88,116): /* zTXt */
         if (nparams == 2)
            return FUNC5(what, insert_zTXt, nparams, parameter_list);
         break;

      case CHUNK(105,84,88,116): /* iTXt */
         if (nparams == 4)
            return FUNC5(what, insert_iTXt, nparams, parameter_list);
         break;

      case CHUNK(104,73,83,84):  /* hIST */
         if (nparams <= 256)
            return FUNC5(what, insert_hIST, nparams, parameter_list);
         break;

      case CHUNK(115,66,73,84): /* sBIT */
         if (nparams <= 4)
            return FUNC5(what, insert_sBIT, nparams, parameter_list);
         break;

#if 0
      case CHUNK(115,80,76,84):  /* sPLT */
         return make_insert(what, insert_sPLT, nparams, parameter_list);
#endif

      default:
         FUNC4(stderr, "makepng --insert \"%s\": unrecognized chunk name\n",
            what);
         FUNC2(1);
   }

   FUNC1(what, nparams);
   return NULL;
}