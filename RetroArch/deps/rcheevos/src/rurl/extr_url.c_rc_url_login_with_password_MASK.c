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
typedef  int /*<<< orphan*/  urle_user_name ;
typedef  int /*<<< orphan*/  urle_password ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,char const*) ; 
 int FUNC1 (char*,size_t,char*,char*,char*) ; 

int FUNC2(char* buffer, size_t size, const char* user_name, const char* password) {
  char urle_user_name[64];
  char urle_password[64];
  int written;

  if (FUNC0(urle_user_name, sizeof(urle_user_name), user_name) != 0) {
    return -1;
  }
  
  if (FUNC0(urle_password, sizeof(urle_password), password) != 0) {
    return -1;
  }
  
  written = FUNC1(
    buffer,
    size,
    "http://retroachievements.org/dorequest.php?r=login&u=%s&p=%s",
    urle_user_name,
    urle_password
  );

  return (size_t)written >= size ? -1 : 0;
}