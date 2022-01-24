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
typedef  TYPE_2__* esp_websocket_client_handle_t ;
typedef  scalar_t__ esp_transport_handle_t ;
struct TYPE_5__ {TYPE_1__* config; } ;
struct TYPE_4__ {scalar_t__ subprotocol; scalar_t__ path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(esp_websocket_client_handle_t client, esp_transport_handle_t trans)
{
    if (trans && client->config->path) {
        FUNC0(trans, client->config->path);
    }
    if (trans && client->config->subprotocol) {
        FUNC1(trans, client->config->subprotocol);
    }
}