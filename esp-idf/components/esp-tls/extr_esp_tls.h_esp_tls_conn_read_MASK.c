#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* read ) (TYPE_1__*,char*,size_t) ;} ;
typedef  TYPE_1__ esp_tls_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,size_t) ; 

__attribute__((used)) static inline ssize_t FUNC1(esp_tls_t *tls, void  *data, size_t datalen)
{
    return tls->read(tls, (char *)data, datalen);
}