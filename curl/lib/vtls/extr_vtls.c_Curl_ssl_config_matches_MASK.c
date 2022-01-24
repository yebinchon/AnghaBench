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
struct ssl_primary_config {scalar_t__ version; scalar_t__ version_max; scalar_t__ verifypeer; scalar_t__ verifyhost; scalar_t__ verifystatus; int /*<<< orphan*/  pinned_key; int /*<<< orphan*/  cipher_list13; int /*<<< orphan*/  cipher_list; int /*<<< orphan*/  egdsocket; int /*<<< orphan*/  random_file; int /*<<< orphan*/  clientcert; int /*<<< orphan*/  CAfile; int /*<<< orphan*/  CApath; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int TRUE ; 

bool
FUNC1(struct ssl_primary_config* data,
                        struct ssl_primary_config* needle)
{
  if((data->version == needle->version) &&
     (data->version_max == needle->version_max) &&
     (data->verifypeer == needle->verifypeer) &&
     (data->verifyhost == needle->verifyhost) &&
     (data->verifystatus == needle->verifystatus) &&
     FUNC0(data->CApath, needle->CApath) &&
     FUNC0(data->CAfile, needle->CAfile) &&
     FUNC0(data->clientcert, needle->clientcert) &&
     FUNC0(data->random_file, needle->random_file) &&
     FUNC0(data->egdsocket, needle->egdsocket) &&
     FUNC0(data->cipher_list, needle->cipher_list) &&
     FUNC0(data->cipher_list13, needle->cipher_list13) &&
     FUNC0(data->pinned_key, needle->pinned_key))
    return TRUE;

  return FALSE;
}