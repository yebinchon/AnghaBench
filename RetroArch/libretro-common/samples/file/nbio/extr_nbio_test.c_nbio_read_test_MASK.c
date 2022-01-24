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
 int /*<<< orphan*/  NBIO_READ ; 
 scalar_t__ FUNC0 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nbio_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct nbio_t*) ; 
 void* FUNC3 (struct nbio_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct nbio_t*) ; 
 struct nbio_t* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
   size_t size;
   bool looped = false;
   struct nbio_t* read = FUNC5("test.bin", NBIO_READ);
   void* ptr           = FUNC3(read, &size);
   if (!read)
      FUNC6("[ERROR]: nbio_open failed (2)");

   if (size != 1024*1024)
      FUNC6("[ERROR]: wrong size (2)");
   if (ptr)
      FUNC6("[SUCCESS]: Read pointer is available before iterating.");

   FUNC1(read);

   while (!FUNC4(read))
      looped=true;

   if (!looped)
      FUNC6("[SUCCESS]: Read finished immediately.");

   ptr = FUNC3(read, &size);

   if (size != 1024*1024)
      FUNC6("[ERROR]: wrong size (3)");
   if (*(char*)ptr != 0x42 || FUNC0(ptr, (char*)ptr+1, 1024*1024-1))
      FUNC6("[ERROR]: wrong data");

   FUNC2(read);
}