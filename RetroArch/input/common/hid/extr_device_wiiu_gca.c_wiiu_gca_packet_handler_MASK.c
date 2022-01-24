#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ gca_pad_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(void *data, uint8_t *packet, uint16_t size)
{
   gca_pad_t *pad = (gca_pad_t *)data;
   uint32_t i, pressed_keys;

   if(!pad || !packet || size > sizeof(pad->data))
      return;

   FUNC0(pad->data, packet, size);
   FUNC1(pad);
   FUNC2(pad);
}