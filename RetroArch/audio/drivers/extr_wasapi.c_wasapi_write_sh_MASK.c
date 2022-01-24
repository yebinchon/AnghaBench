#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t engine_buffer_size; size_t frame_size; int /*<<< orphan*/  client; int /*<<< orphan*/  write_event; scalar_t__ blocking; scalar_t__ buffer; } ;
typedef  TYPE_1__ wasapi_t ;
typedef  int ssize_t ;
typedef  size_t UINT32 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t*) ; 
 size_t FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void const*,int) ; 
 size_t FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static ssize_t FUNC8(wasapi_t *w, const void * data, size_t size)
{
   DWORD ir;
   HRESULT hr;
   size_t write_avail = 0;
   ssize_t written    = -1;
   UINT32 padding     = 0;

   if (w->buffer)
   {
      write_avail = FUNC5(w->buffer);
      if (!write_avail)
      {
         size_t read_avail  = 0;

         if (w->blocking)
         {
            ir = FUNC1(w->write_event, INFINITE);
            if (!(ir == WAIT_OBJECT_0))
               return -1;
         }

         hr = FUNC2(w->client, &padding);
         if (FUNC0(hr))
            return -1;

         read_avail  = FUNC3(w->buffer);
         write_avail = w->engine_buffer_size - padding * w->frame_size;
         written     = read_avail < write_avail ? read_avail : write_avail;
         if (written)
            if (!FUNC7(w, written))
               return -1;
      }

      write_avail = FUNC5(w->buffer);
      written     = size < write_avail ? size : write_avail;
      if (written)
         FUNC4(w->buffer, data, written);
   }
   else
   {
      if (w->blocking)
      {
         ir = FUNC1(w->write_event, INFINITE);
         if (!(ir == WAIT_OBJECT_0))
            return -1;
      }

      hr = FUNC2(w->client, &padding);
      if (FUNC0(hr))
         return -1;

      write_avail = w->engine_buffer_size - padding * w->frame_size;
      if (!write_avail)
         return 0;

      written = size < write_avail ? size : write_avail;
      if (written)
         if (!FUNC6(w, data, written))
            return -1;
   }

   return written;
}