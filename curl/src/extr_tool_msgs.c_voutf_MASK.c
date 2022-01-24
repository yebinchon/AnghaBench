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
struct GlobalConfig {int /*<<< orphan*/  errors; int /*<<< orphan*/  mute; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(struct GlobalConfig *config,
                  const char *prefix,
                  const char *fmt,
                  va_list ap)
{
  size_t width = (79 - FUNC5(prefix));
  if(!config->mute) {
    size_t len;
    char *ptr;
    char *print_buffer;

    print_buffer = FUNC2(fmt, ap);
    if(!print_buffer)
      return;
    len = FUNC5(print_buffer);

    ptr = print_buffer;
    while(len > 0) {
      FUNC3(prefix, config->errors);

      if(len > width) {
        size_t cut = width-1;

        while(!FUNC0(ptr[cut]) && cut) {
          cut--;
        }
        if(0 == cut)
          /* not a single cutting position was found, just cut it at the
             max text width then! */
          cut = width-1;

        (void)FUNC4(ptr, cut + 1, 1, config->errors);
        FUNC3("\n", config->errors);
        ptr += cut + 1; /* skip the space too */
        len -= cut + 1;
      }
      else {
        FUNC3(ptr, config->errors);
        len = 0;
      }
    }
    FUNC1(print_buffer);
  }
}