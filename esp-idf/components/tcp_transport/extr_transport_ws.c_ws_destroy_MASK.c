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
struct TYPE_4__ {struct TYPE_4__* sub_protocol; struct TYPE_4__* path; struct TYPE_4__* buffer; } ;
typedef  TYPE_1__ transport_ws_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static esp_err_t FUNC2(esp_transport_handle_t t)
{
    transport_ws_t *ws = FUNC0(t);
    FUNC1(ws->buffer);
    FUNC1(ws->path);
    FUNC1(ws->sub_protocol);
    FUNC1(ws);
    return 0;
}