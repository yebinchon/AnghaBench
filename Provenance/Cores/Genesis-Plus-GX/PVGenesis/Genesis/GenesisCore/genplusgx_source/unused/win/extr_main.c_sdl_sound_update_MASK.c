#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* current_pos; int current_emulated_samples; } ;
struct TYPE_3__ {short** buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 TYPE_2__ sdl_sound ; 
 TYPE_1__ snd ; 
 scalar_t__ use_sound ; 

__attribute__((used)) static void FUNC3()
{
  int i;
  short* p;

  int size = FUNC2();

  if (use_sound)
  {
    FUNC0();
    p = (short*)sdl_sound.current_pos;
    for(i = 0; i < size; ++i) {
        *p = snd.buffer[0][i];
        ++p;
        *p = snd.buffer[1][i];
        ++p;
    }
    sdl_sound.current_pos = (char*)p;
    sdl_sound.current_emulated_samples += size * 2 * sizeof(short);
    FUNC1();
  }
}