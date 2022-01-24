#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_structp ;
struct TYPE_2__ {int* location; } ;

/* Variables and functions */
 int have_sTER ; 
 int have_vpAg ; 
 TYPE_1__ user_chunk_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(png_structp write_ptr, int location)
{
   int i;

   /* Notice that this preserves the original chunk order, however chunks
    * intercepted by the callback will be written *after* chunks passed to
    * libpng.  This will actually reverse a pair of sTER chunks or a pair of
    * vpAg chunks, resulting in an error later.  This is not worth worrying
    * about - the chunks should not be duplicated!
    */
   for (i=0; i<2; ++i)
   {
      if (user_chunk_data.location[i] == (location | have_sTER))
         FUNC0(write_ptr);

      else if (user_chunk_data.location[i] == (location | have_vpAg))
         FUNC1(write_ptr);
   }
}