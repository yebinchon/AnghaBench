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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  ARAM_WRITE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ aramfix ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

void FUNC5(char *src, char *dst, int len)
{
  u32 misalignaddress;
  u32 misalignedbytes;
  u32 misalignedbytestodo;

  int i, block;
  int offset = 0;

  /*** Check destination alignment ***/
  if ((u32) dst & 0x1f)
  {
    /*** Retrieve previous 32 byte section ***/
    misalignaddress = ((u32) dst & ~0x1f);
    misalignedbytestodo = 32 - ((u32) dst & 0x1f);
    misalignedbytes = ((u32) dst & 0x1f);
    FUNC0(aramfix, (char *) misalignaddress, 32);

    /*** Update from source ***/
    FUNC4(aramfix + misalignedbytes, src, misalignedbytestodo);

    /*** Put it back ***/
    FUNC3(aramfix, 32);
    FUNC2(ARAM_WRITE, (u32) aramfix, (u32) dst & ~0x1f, 32);
    while (FUNC1());

    /*** Update pointers ***/
    src += misalignedbytestodo;
    len -= misalignedbytestodo;
    dst = (char *) (((u32) dst & ~0x1f) + 32);
  }

  /*** Move 2k blocks - saves aligning source buffer ***/
  block = (len >> 11);
  for (i = 0; i < block; i++)
  {
    FUNC4(aramfix, src + offset, 2048);
    FUNC3(aramfix, 2048);
    FUNC2(ARAM_WRITE, (u32) aramfix, (u32) dst + offset, 2048);
    while (FUNC1());
    offset += 2048;
  }

  /*** Clean up remainder ***/
  len &= 0x7ff;
  if (len)
  {
    block = len & 0x1f;		/*** Is length aligned ? ***/
    FUNC4(aramfix, src + offset, len & ~0x1f);
    FUNC3(aramfix, len & ~0x1f);
    FUNC2(ARAM_WRITE, (u32) aramfix, (u32) dst + offset, len & ~0x1f);
    while (FUNC1());

    if (block)
    {
      offset += len & ~0x1f;
      misalignedbytes = len & 0x1f;

      /*** Do same shuffle as destination alignment ***/
      FUNC0(aramfix, dst + offset, 32);
      FUNC4(aramfix, src + offset, misalignedbytes);
      FUNC3(aramfix, 32);
      FUNC2(ARAM_WRITE, (u32) aramfix, (u32) dst + offset, 32);
      while (FUNC1());
    }
  }
}