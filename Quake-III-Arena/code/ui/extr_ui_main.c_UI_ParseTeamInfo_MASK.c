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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char**) ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static void FUNC6(const char *teamFile) {
	char	*token;
  char *p;
  char *buff = NULL;
  //static int mode = 0; TTimo: unused

  buff = FUNC3(teamFile);
  if (!buff) {
    return;
  }

  p = buff;

	while ( 1 ) {
		token = FUNC1( &p, qtrue );
		if( !token || token[0] == 0 || token[0] == '}') {
			break;
		}

		if ( FUNC4( token, "}" ) == 0 ) {
      break;
    }

    if (FUNC4(token, "teams") == 0) {

      if (FUNC5(&p)) {
        continue;
      } else {
        break;
      }
    }

    if (FUNC4(token, "characters") == 0) {
      FUNC2(&p);
    }

    if (FUNC4(token, "aliases") == 0) {
      FUNC0(&p);
    }

  }

}