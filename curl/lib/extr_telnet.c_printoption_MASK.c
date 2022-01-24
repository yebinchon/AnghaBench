#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ verbose; } ;
struct Curl_easy {TYPE_1__ set; } ;

/* Variables and functions */
 int CURL_DO ; 
 int CURL_DONT ; 
 int CURL_IAC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 int CURL_TELOPT_EXOPL ; 
 scalar_t__ FUNC3 (int) ; 
 int CURL_WILL ; 
 int CURL_WONT ; 
 int /*<<< orphan*/  FUNC4 (struct Curl_easy*,char*,char const*,...) ; 

__attribute__((used)) static void FUNC5(struct Curl_easy *data,
                        const char *direction, int cmd, int option)
{
  if(data->set.verbose) {
    if(cmd == CURL_IAC) {
      if(FUNC1(option))
        FUNC4(data, "%s IAC %s\n", direction, FUNC0(option));
      else
        FUNC4(data, "%s IAC %d\n", direction, option);
    }
    else {
      const char *fmt = (cmd == CURL_WILL) ? "WILL" :
                        (cmd == CURL_WONT) ? "WONT" :
                        (cmd == CURL_DO) ? "DO" :
                        (cmd == CURL_DONT) ? "DONT" : 0;
      if(fmt) {
        const char *opt;
        if(FUNC3(option))
          opt = FUNC2(option);
        else if(option == CURL_TELOPT_EXOPL)
          opt = "EXOPL";
        else
          opt = NULL;

        if(opt)
          FUNC4(data, "%s %s %s\n", direction, fmt, opt);
        else
          FUNC4(data, "%s %s %d\n", direction, fmt, option);
      }
      else
        FUNC4(data, "%s %d %d\n", direction, cmd, option);
    }
  }
}