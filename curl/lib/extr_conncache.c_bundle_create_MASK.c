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
struct connectbundle {int /*<<< orphan*/  conn_list; int /*<<< orphan*/  multiuse; scalar_t__ num_connections; } ;
struct Curl_easy {int dummy; } ;
typedef  int /*<<< orphan*/  curl_llist_dtor ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  BUNDLE_UNKNOWN ; 
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ conn_llist_dtor ; 
 struct connectbundle* FUNC2 (int) ; 

__attribute__((used)) static CURLcode FUNC3(struct Curl_easy *data,
                              struct connectbundle **cb_ptr)
{
  (void)data;
  FUNC1(*cb_ptr == NULL);
  *cb_ptr = FUNC2(sizeof(struct connectbundle));
  if(!*cb_ptr)
    return CURLE_OUT_OF_MEMORY;

  (*cb_ptr)->num_connections = 0;
  (*cb_ptr)->multiuse = BUNDLE_UNKNOWN;

  FUNC0(&(*cb_ptr)->conn_list, (curl_llist_dtor) conn_llist_dtor);
  return CURLE_OK;
}