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
struct config_file_userdata {int /*<<< orphan*/  conf; int /*<<< orphan*/ * prefix; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,float*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char const*,char,int) ; 

int FUNC2(void *userdata, const char *key_str,
      float *value, float default_value)
{
   bool got;
   char key[2][256];
   struct config_file_userdata *usr = (struct config_file_userdata*)userdata;

   FUNC1(key[0], usr->prefix[0], key_str, '_', sizeof(key[0]));
   FUNC1(key[1], usr->prefix[1], key_str, '_', sizeof(key[1]));

   got = FUNC0  (usr->conf, key[0], value);
   got = got || FUNC0(usr->conf, key[1], value);

   if (!got)
      *value = default_value;
   return got;
}