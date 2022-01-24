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
struct nbio_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nbio_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct nbio_t*) ; 
 void* FUNC3 (struct nbio_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct nbio_t*) ; 
 struct nbio_t* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nbio_t*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
   size_t size;
   bool looped = false;
   void* ptr = NULL;
   struct nbio_t* write = FUNC5("test.bin", NBIO_WRITE);
   if (!write)
      FUNC7("[ERROR]: nbio_open failed (1)");

   FUNC6(write, 1024*1024);

   ptr = FUNC3(write, &size);
   if (size != 1024*1024)
      FUNC7("[ERROR]: wrong size (1)");

   FUNC0(ptr, 0x42, 1024*1024);
   FUNC1(write);

   while (!FUNC4(write))
      looped=true;

   if (!looped)
      FUNC7("[SUCCESS]: Write finished immediately.");

   FUNC2(write);
}