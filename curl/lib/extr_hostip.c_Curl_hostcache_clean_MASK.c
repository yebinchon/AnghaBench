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
struct curl_hash {int dummy; } ;
struct Curl_easy {scalar_t__ share; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_LOCK_ACCESS_SINGLE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_DNS ; 
 int /*<<< orphan*/  FUNC0 (struct curl_hash*) ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,int /*<<< orphan*/ ) ; 

void FUNC3(struct Curl_easy *data,
                          struct curl_hash *hash)
{
  if(data && data->share)
    FUNC1(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

  FUNC0(hash);

  if(data && data->share)
    FUNC2(data, CURL_LOCK_DATA_DNS);
}