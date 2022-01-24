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
struct ssl_primary_config {int /*<<< orphan*/  pinned_key; int /*<<< orphan*/  cipher_list13; int /*<<< orphan*/  cipher_list; int /*<<< orphan*/  egdsocket; int /*<<< orphan*/  random_file; int /*<<< orphan*/  clientcert; int /*<<< orphan*/  CAfile; int /*<<< orphan*/  CApath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct ssl_primary_config* sslc)
{
  FUNC0(sslc->CApath);
  FUNC0(sslc->CAfile);
  FUNC0(sslc->clientcert);
  FUNC0(sslc->random_file);
  FUNC0(sslc->egdsocket);
  FUNC0(sslc->cipher_list);
  FUNC0(sslc->cipher_list13);
  FUNC0(sslc->pinned_key);
}