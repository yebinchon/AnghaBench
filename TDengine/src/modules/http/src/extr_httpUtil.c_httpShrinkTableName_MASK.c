#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/ * digest; } ;
typedef  TYPE_1__ MD5_CTX ;
typedef  int /*<<< orphan*/  HttpContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TSDB_METER_NAME_LEN ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(HttpContext *pContext, int pos, char *name) {
  int len = 0;
  for (int i = 0; name[i] != 0; i++) {
    if (name[i] == ' ' || name[i] == ':' || name[i] == '.' || name[i] == '-' || name[i] == '/' || name[i] == '\'' ||
        name[i] == '\"')
      name[i] = '_';
    len++;
  }

  if (len < TSDB_METER_NAME_LEN) {
    return pos;
  }

  MD5_CTX context;
  FUNC1(&context);
  FUNC2(&context, (uint8_t *)name, (uint32_t)len);
  FUNC0(&context);

  int table_name = FUNC3(
      pContext, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", context.digest[0],
      context.digest[1], context.digest[2], context.digest[3], context.digest[4], context.digest[5], context.digest[6],
      context.digest[7], context.digest[8], context.digest[9], context.digest[10], context.digest[11],
      context.digest[12], context.digest[13], context.digest[14], context.digest[15]);

  if (table_name != -1) {
    FUNC4(pContext, table_name)[0] = 't';
  }

  return table_name;
}