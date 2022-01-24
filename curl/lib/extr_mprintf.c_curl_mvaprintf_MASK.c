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
struct asprintf {char* buffer; size_t len; scalar_t__ alloc; scalar_t__ fail; } ;

/* Variables and functions */
 int /*<<< orphan*/  alloc_addbyter ; 
 int FUNC0 (struct asprintf*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 

char *FUNC3(const char *format, va_list ap_save)
{
  int retcode;
  struct asprintf info;

  info.buffer = NULL;
  info.len = 0;
  info.alloc = 0;
  info.fail = 0;

  retcode = FUNC0(&info, alloc_addbyter, format, ap_save);
  if((-1 == retcode) || info.fail) {
    if(info.alloc)
      FUNC1(info.buffer);
    return NULL;
  }

  if(info.alloc) {
    info.buffer[info.len] = 0; /* we terminate this with a zero byte */
    return info.buffer;
  }
  return FUNC2("");
}