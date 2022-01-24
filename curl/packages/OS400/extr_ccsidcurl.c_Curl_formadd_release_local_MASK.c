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
struct curl_forms {scalar_t__ value; int /*<<< orphan*/  option; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct curl_forms * forms, int nargs, int skip)

{
  while(nargs--)
    if(nargs != skip)
      if(FUNC0(forms[nargs].option))
        if(forms[nargs].value)
          FUNC1((char *) forms[nargs].value);

  FUNC1((char *) forms);
}