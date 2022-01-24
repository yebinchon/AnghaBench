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
struct connectdata {int /*<<< orphan*/  data; } ;
struct connectbundle {int dummy; } ;
struct conncache {int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct connectbundle* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int HASHKEY_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct connectdata*,char*,int,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

struct connectbundle *FUNC4(struct connectdata *conn,
                                                 struct conncache *connc,
                                                 const char **hostp)
{
  struct connectbundle *bundle = NULL;
  FUNC0(conn->data);
  if(connc) {
    char key[HASHKEY_SIZE];
    FUNC2(conn, key, sizeof(key), hostp);
    bundle = FUNC1(&connc->hash, key, FUNC3(key));
  }

  return bundle;
}