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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  s16 ;
typedef  scalar_t__ LPVOID ;
typedef  int DWORD ;

/* Variables and functions */
 int DSBSTATUS_BUFFERLOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int*,scalar_t__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  lpDSB2 ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  soundbufsize ; 
 int /*<<< orphan*/  soundoffset ; 
 int /*<<< orphan*/ * stereodata16 ; 

void FUNC5(u32 *leftchanbuffer, u32 *rightchanbuffer, u32 num_samples)
{
   LPVOID buffer1;
   LPVOID buffer2;
   DWORD buffer1_size, buffer2_size;
   DWORD status;

   FUNC0(lpDSB2, &status);

   if (status & DSBSTATUS_BUFFERLOST)
      return; // fix me

   FUNC1(lpDSB2, soundoffset, num_samples * sizeof(s16) * 2, &buffer1, &buffer1_size, &buffer2, &buffer2_size, 0);

   FUNC3((s32 *)leftchanbuffer, (s32 *)rightchanbuffer, (s16 *)stereodata16, num_samples);
   FUNC4(buffer1, stereodata16, buffer1_size);
   if (buffer2)
      FUNC4(buffer2, ((u8 *)stereodata16)+buffer1_size, buffer2_size);

   soundoffset += buffer1_size + buffer2_size;
   soundoffset %= soundbufsize;

   FUNC2(lpDSB2, buffer1, buffer1_size, buffer2, buffer2_size);
}