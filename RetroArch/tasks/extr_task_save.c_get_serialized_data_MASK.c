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
struct TYPE_3__ {size_t size; void* data; } ;
typedef  TYPE_1__ retro_ctx_serialize_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_BYTES ; 
 int /*<<< orphan*/  MSG_STATE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC5(const char *path, size_t serial_size)
{
   retro_ctx_serialize_info_t serial_info;
   bool ret    = false;
   void *data  = NULL;

   if (!serial_size)
      return NULL;

   data = FUNC3(serial_size);

   if (!data)
      return NULL;

   FUNC0("%s: %d %s.\n",
         FUNC4(MSG_STATE_SIZE),
         (int)serial_size,
         FUNC4(MSG_BYTES));

   serial_info.data = data;
   serial_info.size = serial_size;
   ret              = FUNC1(&serial_info);

   if (!ret)
   {
      FUNC2(data);
      return NULL;
   }

   return data;
}