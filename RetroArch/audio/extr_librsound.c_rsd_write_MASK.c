#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int chunk_size; } ;
struct TYPE_7__ {int buffer_size; TYPE_1__ backend_info; int /*<<< orphan*/  ready_for_data; } ;
typedef  TYPE_2__ rsound_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (TYPE_2__*,char const*,size_t) ; 

size_t FUNC3( rsound_t *rsound, const void* buf, size_t size)
{
   size_t max_write, written = 0;
   FUNC0(rsound != NULL);
   if ( !rsound->ready_for_data )
      return 0;

   max_write = (rsound->buffer_size - rsound->backend_info.chunk_size)/2;

   /* Makes sure that we can handle arbitrary large write sizes */

   while ( written < size )
   {
      size_t write_size = (size - written) > max_write ? max_write : (size - written);
      size_t     result = FUNC2(rsound, (const char*)buf + written, write_size);

      if (result == 0)
      {
         FUNC1(rsound);
         return 0;
      }
      written += result;
   }
   return written;
}