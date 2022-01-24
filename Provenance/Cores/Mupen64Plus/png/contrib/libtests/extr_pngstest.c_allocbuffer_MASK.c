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
typedef  scalar_t__ png_size_t ;
struct TYPE_4__ {scalar_t__ bufsize; scalar_t__ allocsize; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  stride; int /*<<< orphan*/  image; } ;
typedef  TYPE_1__ Image ;

/* Variables and functions */
 int BUFFER_INIT8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  png_bytep ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(Image *image)
{
   png_size_t size = FUNC0(image->image, image->stride);

   if (size+32 > image->bufsize)
   {
      FUNC4(image);
      image->buffer = FUNC7(png_bytep, FUNC5(size+32));
      if (image->buffer == NULL)
      {
         FUNC2(stdout);
         FUNC3(stderr,
            "simpletest: out of memory allocating %lu(+32) byte buffer\n",
            (unsigned long)size);
         FUNC1(1);
      }
      image->bufsize = size+32;
   }

   FUNC6(image->buffer, 95, image->bufsize);
   FUNC6(image->buffer+16, BUFFER_INIT8, size);
   image->allocsize = size;
}