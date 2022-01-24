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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,char**) ; 

__attribute__((used)) static void
FUNC3(char *nextarg, char **file, char **password)
{
  char *certname, *passphrase;
  FUNC2(nextarg, &certname, &passphrase);
  FUNC0(*file);
  *file = certname;
  if(passphrase) {
    FUNC0(*password);
    *password = passphrase;
  }
  FUNC1(nextarg);
}