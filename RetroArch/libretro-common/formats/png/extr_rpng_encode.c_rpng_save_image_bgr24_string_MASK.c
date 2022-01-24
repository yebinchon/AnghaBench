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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  intfstream_t ;

/* Variables and functions */
 unsigned int DEFLATE_PADDING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int PNG_ROUGH_HEADER ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_HINT_NONE ; 
 int /*<<< orphan*/  RETRO_VFS_FILE_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned int,unsigned int,int,int) ; 

uint8_t* FUNC8(const uint8_t *data,
      unsigned width, unsigned height, signed pitch, uint64_t* bytes)
{
   bool ret                    = false;
   uint8_t* buf                = NULL;
   uint8_t* output             = NULL;
   int buf_length              = 0;
   intfstream_t* intf_s        = NULL;

   buf_length = (int)(width*height*3*DEFLATE_PADDING)+PNG_ROUGH_HEADER;
   buf        = (uint8_t*)FUNC6(buf_length*sizeof(uint8_t));
   if (!buf)
      FUNC0(); 
   
   intf_s = FUNC3(buf, 
         RETRO_VFS_FILE_ACCESS_WRITE,
         RETRO_VFS_FILE_ACCESS_HINT_NONE,
         buf_length);

   ret = FUNC7((const uint8_t*)data, 
            intf_s, width, height, pitch, 3);

   *bytes = FUNC2(intf_s);
   FUNC5(intf_s);
   output = (uint8_t*)FUNC6((*bytes)*sizeof(uint8_t));
   if (!output)
      FUNC0();
   FUNC4(intf_s, output, *bytes);

end:
   if (buf)
      FUNC1(buf);
   if (intf_s)
      FUNC1(intf_s);
   if (ret == false)
   {
      if (output)
         FUNC1(output);
      return NULL;
   }
   return output;
}