#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__** blips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__ snd ; 

void FUNC1(void)
{
  int i,j;
  
  /* Delete blip buffers */
  for (i=0; i<3; i++)
  {
    for (j=0; j<2; j++)
    {
      FUNC0(snd.blips[i][j]);
      snd.blips[i][j] = 0;
    }
  }
}