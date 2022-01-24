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

/* Variables and functions */
 scalar_t__* keysUsed ; 

void * FUNC0(void *pTlsThreadStruct, unsigned int index)
{
   void **pTls = (void **) pTlsThreadStruct;

   if (keysUsed[index-1])
   {
      if (pTls != NULL)
         return pTls[index-1];
   }
   return NULL;
}