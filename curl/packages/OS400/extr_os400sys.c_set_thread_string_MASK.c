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
typedef  int /*<<< orphan*/  localkey_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MAX_CONV_EXPANSION ; 
 int FUNC1 (char*,char const*,int,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(localkey_t key, const char * s)

{
  int i;
  char * cp;

  if(!s)
    return (char *) NULL;

  i = FUNC2(s) + 1;
  cp = FUNC0(key, MAX_CONV_EXPANSION * i + 1);

  if(cp) {
    i = FUNC1(cp, s, MAX_CONV_EXPANSION * i, i);
    cp[i] = '\0';
  }

  return cp;
}