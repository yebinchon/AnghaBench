#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct conncache {TYPE_2__* closure_handle; int /*<<< orphan*/  hash; } ;
struct TYPE_4__ {struct conncache* conn_cache; } ;
struct TYPE_5__ {TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Curl_hash_str ; 
 int /*<<< orphan*/  Curl_str_key_compare ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  free_bundle_hash_entry ; 

int FUNC3(struct conncache *connc, int size)
{
  int rc;

  /* allocate a new easy handle to use when closing cached connections */
  connc->closure_handle = FUNC2();
  if(!connc->closure_handle)
    return 1; /* bad */

  rc = FUNC1(&connc->hash, size, Curl_hash_str,
                      Curl_str_key_compare, free_bundle_hash_entry);
  if(rc)
    FUNC0(&connc->closure_handle);
  else
    connc->closure_handle->state.conn_cache = connc;

  return rc;
}