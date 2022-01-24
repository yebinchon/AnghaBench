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
typedef  int /*<<< orphan*/  va_list ;
typedef  int dtoverlay_logging_type_t ;

/* Variables and functions */
#define  DTOVERLAY_DEBUG 129 
#define  DTOVERLAY_ERROR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(dtoverlay_logging_type_t type,
                                    const char *fmt, va_list args)
{
   const char *type_str;

   switch (type)
   {
   case DTOVERLAY_ERROR:
      type_str = "error";
      break;

   case DTOVERLAY_DEBUG:
      type_str = "debug";
      break;

   default:
      type_str = "?";
   }

   FUNC0(stderr, "DTOVERLAY[%s]: ", type_str);
   FUNC1(stderr, fmt, args);
   FUNC0(stderr, "\n");
}