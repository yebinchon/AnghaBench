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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nbio_t {int dummy; } ;
typedef  int /*<<< orphan*/  rpng_t ;

/* Variables and functions */
 int IMAGE_PROCESS_ERROR ; 
 int IMAGE_PROCESS_ERROR_END ; 
 int IMAGE_PROCESS_NEXT ; 
 int /*<<< orphan*/  NBIO_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nbio_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct nbio_t*) ; 
 void* FUNC3 (struct nbio_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct nbio_t*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,void**,size_t,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC13(const char *path, uint32_t **data,
      unsigned *width, unsigned *height)
{
   int retval;
   size_t file_len;
   bool              ret = true;
   rpng_t          *rpng = NULL;
   void             *ptr = NULL;
   struct nbio_t* handle = (struct nbio_t*)FUNC5(path, NBIO_READ);

   if (!handle)
      goto end;

   FUNC1(handle);

   while (!FUNC4(handle));

   ptr = FUNC3(handle, &file_len);

   if (!ptr)
   {
      ret = false;
      goto end;
   }

   rpng = FUNC6();

   if (!rpng)
   {
      ret = false;
      goto end;
   }

   if (!FUNC11(rpng, (uint8_t*)ptr))
   {
      ret = false;
      goto end;
   }

   if (!FUNC12(rpng))
   {
      ret = false;
      goto end;
   }

   while (FUNC9(rpng));

   if (!FUNC8(rpng))
   {
      ret = false;
      goto end;
   }

   do
   {
      retval = FUNC10(rpng,
            (void**)data, file_len, width, height);
   }while(retval == IMAGE_PROCESS_NEXT);

   if (retval == IMAGE_PROCESS_ERROR || retval == IMAGE_PROCESS_ERROR_END)
      ret = false;

end:
   if (handle)
      FUNC2(handle);
   if (rpng)
      FUNC7(rpng);
   rpng = NULL;
   if (!ret)
      FUNC0(*data);
   return ret;
}