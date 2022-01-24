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
struct connectdata {scalar_t__ connection_id; struct Curl_easy* data; } ;
struct connectbundle {int dummy; } ;
struct conncache {int /*<<< orphan*/  num_conn; int /*<<< orphan*/  next_connection_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn_cache; } ;
struct Curl_easy {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  key ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Curl_easy*) ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 struct connectbundle* FUNC1 (struct connectdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int HASHKEY_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct connectbundle*,struct connectdata*) ; 
 scalar_t__ FUNC4 (struct Curl_easy*,struct connectbundle**) ; 
 int /*<<< orphan*/  FUNC5 (struct connectbundle*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,struct connectbundle*) ; 
 int /*<<< orphan*/  FUNC7 (struct connectdata*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct Curl_easy*,char*,scalar_t__,int /*<<< orphan*/ ) ; 

CURLcode FUNC9(struct conncache *connc,
                                 struct connectdata *conn)
{
  CURLcode result = CURLE_OK;
  struct connectbundle *bundle;
  struct connectbundle *new_bundle = NULL;
  struct Curl_easy *data = conn->data;

  /* *find_bundle() locks the connection cache */
  bundle = FUNC1(conn, data->state.conn_cache, NULL);
  if(!bundle) {
    int rc;
    char key[HASHKEY_SIZE];

    result = FUNC4(data, &new_bundle);
    if(result) {
      goto unlock;
    }

    FUNC7(conn, key, sizeof(key), NULL);
    rc = FUNC6(data->state.conn_cache, key, new_bundle);

    if(!rc) {
      FUNC5(new_bundle);
      result = CURLE_OUT_OF_MEMORY;
      goto unlock;
    }
    bundle = new_bundle;
  }

  FUNC3(bundle, conn);
  conn->connection_id = connc->next_connection_id++;
  connc->num_conn++;

  FUNC2(FUNC8(conn->data, "Added connection %ld. "
               "The cache now contains %zu members\n",
               conn->connection_id, connc->num_conn));

  unlock:
  FUNC0(data);

  return result;
}