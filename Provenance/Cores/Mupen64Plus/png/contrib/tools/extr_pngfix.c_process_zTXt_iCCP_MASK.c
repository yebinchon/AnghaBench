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
struct file {int /*<<< orphan*/ * idat; struct chunk* chunk; } ;
struct chunk {int chunk_length; } ;
typedef  int png_uint_32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct chunk*,char*) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct chunk*) ; 
 int FUNC4 (struct file*,int) ; 

__attribute__((used)) static int
FUNC5(struct file *file)
   /* zTXt and iCCP have exactly the same form - keyword, null, compression
    * method then compressed data.
    */
{
   struct chunk *chunk = file->chunk;
   png_uint_32 length;
   png_uint_32 index = 0;

   FUNC0(chunk != NULL && file->idat == NULL);
   length = chunk->chunk_length;
   FUNC3(chunk);

   while (length >= 9)
   {
      --length;
      ++index;
      if (FUNC2(file) == 0) /* keyword null terminator */
      {
         --length;
         ++index;
         (void)FUNC2(file); /* compression method */
         return FUNC4(file, index);
      }
   }

   FUNC1(chunk, "too short");
   return 0; /* skip */
}