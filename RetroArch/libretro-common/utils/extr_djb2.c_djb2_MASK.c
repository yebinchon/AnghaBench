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
typedef  int uint32_t ;

/* Variables and functions */

__attribute__((used)) static uint32_t FUNC0(const char* str)
{
   const unsigned char* aux = (const unsigned char*)str;
   uint32_t hash = 5381;

   while (*aux)
      hash = (hash << 5) + hash + *aux++;

   return hash;
}