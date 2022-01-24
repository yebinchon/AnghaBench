#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int compression; void* lang_key; void* lang; } ;
typedef  TYPE_1__ png_text ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
typedef  void** png_charpp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,void*) ; 

__attribute__((used)) static void
FUNC3(png_structp png_ptr, png_infop info_ptr, int nparams,
   png_charpp params)
{
   png_text text;

   FUNC0(nparams, 4);
   FUNC1(&text, params[0]);
   text.compression = 2; /* iTXt + deflate */
   text.lang = params[1];/* language tag */
   text.lang_key = params[2]; /* translated keyword */
   FUNC2(png_ptr, info_ptr, &text, params[3]);
}