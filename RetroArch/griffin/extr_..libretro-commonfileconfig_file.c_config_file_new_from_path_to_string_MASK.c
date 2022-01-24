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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,void**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (char const*) ; 

config_file_t *FUNC4(const char *path)
{
   int64_t length                = 0;
   uint8_t *ret_buf              = NULL;
   config_file_t *conf           = NULL;

   if (FUNC3(path))
   {
      if (FUNC1(path, (void**)&ret_buf, &length))
      {
         if (length >= 0)
            conf = FUNC0((const char*)ret_buf, path);
         if ((void*)ret_buf)
            FUNC2((void*)ret_buf);
      }
   }

   return conf;
}