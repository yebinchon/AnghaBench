#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  waveheader_struct ;
typedef  int /*<<< orphan*/  fmt_struct ;
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ IOCheck_struct ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 long FUNC2 (scalar_t__) ; 
 scalar_t__ wavefp ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,int,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
   if (wavefp)
   {
      long length = FUNC2(wavefp);
      IOCheck_struct check = { 0, 0 };

      // Let's fix the riff chunk size and the data chunk size
      FUNC1(wavefp, sizeof(waveheader_struct)-0x8, SEEK_SET);
      length -= 0x4;
      FUNC3(&check, (void *)&length, 1, 4, wavefp);

      FUNC1(wavefp, sizeof(waveheader_struct)+sizeof(fmt_struct)+0x4, SEEK_SET);
      length -= sizeof(waveheader_struct)+sizeof(fmt_struct);
      FUNC3(&check, (void *)&length, 1, 4, wavefp);
      FUNC0(wavefp);
   }
}