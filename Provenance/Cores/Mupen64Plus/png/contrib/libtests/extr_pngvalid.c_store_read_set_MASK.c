#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
struct TYPE_5__ {scalar_t__ id; struct TYPE_5__* next; int /*<<< orphan*/  IDAT_bits; int /*<<< orphan*/  IDAT_size; } ;
typedef  TYPE_1__ png_store_file ;
struct TYPE_6__ {unsigned long IDAT_crc; int /*<<< orphan*/  pread; scalar_t__ IDAT_pos; scalar_t__ IDAT_len; int /*<<< orphan*/  IDAT_bits; int /*<<< orphan*/  IDAT_size; int /*<<< orphan*/ * next; TYPE_1__* current; TYPE_1__* saved; } ;
typedef  TYPE_2__ png_store ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 (char*,int,size_t,char*) ; 
 size_t FUNC2 (char*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(png_store *ps, png_uint_32 id)
{
   png_store_file *pf = ps->saved;

   while (pf != NULL)
   {
      if (pf->id == id)
      {
         ps->current = pf;
         ps->next = NULL;
         ps->IDAT_size = pf->IDAT_size;
         ps->IDAT_bits = pf->IDAT_bits; /* just a cache */
         ps->IDAT_len = 0;
         ps->IDAT_pos = 0;
         ps->IDAT_crc = 0UL;
         FUNC3(ps);
         return;
      }

      pf = pf->next;
   }

   {
      size_t pos;
      char msg[FILE_NAME_SIZE+64];

      pos = FUNC2(msg, sizeof msg, 0, id);
      pos = FUNC1(msg, sizeof msg, pos, ": file not found");
      FUNC0(ps->pread, msg);
   }
}