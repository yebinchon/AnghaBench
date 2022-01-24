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
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ content_encoding ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENT_ENCODING_DEFAULT ; 
 TYPE_1__** encodings ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 

char *FUNC5(void)
{
  size_t len = 0;
  const content_encoding * const *cep;
  const content_encoding *ce;
  char *ace;

  for(cep = encodings; *cep; cep++) {
    ce = *cep;
    if(!FUNC1(ce->name, CONTENT_ENCODING_DEFAULT))
      len += FUNC4(ce->name) + 2;
  }

  if(!len)
    return FUNC3(CONTENT_ENCODING_DEFAULT);

  ace = FUNC0(len);
  if(ace) {
    char *p = ace;
    for(cep = encodings; *cep; cep++) {
      ce = *cep;
      if(!FUNC1(ce->name, CONTENT_ENCODING_DEFAULT)) {
        FUNC2(p, ce->name);
        p += FUNC4(p);
        *p++ = ',';
        *p++ = ' ';
      }
    }
    p[-2] = '\0';
  }

  return ace;
}