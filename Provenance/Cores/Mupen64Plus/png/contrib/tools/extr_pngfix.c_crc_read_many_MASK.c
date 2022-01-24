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
struct file {scalar_t__ crc; } ;
typedef  scalar_t__ png_uint_32 ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int FUNC1 (struct file*) ; 

__attribute__((used)) static int
FUNC2(struct file *file, png_uint_32 length)
   /* Reads 'length' bytes and updates the CRC, returns true on success, false
    * if the input is truncated.
    */
{
   if (length > 0)
   {
      png_uint_32 crc = file->crc;

      do
      {
         int ch = FUNC1(file);

         if (ch == EOF)
            return 0; /* Truncated */

         crc = FUNC0(crc, ch);
      }
      while (--length > 0);

      file->crc = crc;
   }

   return 1; /* OK */
}