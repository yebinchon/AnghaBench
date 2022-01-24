#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  service; } ;
typedef  TYPE_2__ tBTA_UTL_COD ;
typedef  int /*<<< orphan*/  tBTA_HF_CLIENT_DATA ;
struct TYPE_5__ {int /*<<< orphan*/  deregister; } ;
struct TYPE_7__ {TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_UTL_CLR_COD_SERVICE_CLASS ; 
 int /*<<< orphan*/  BTM_COD_SERVICE_AUDIO ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC4(tBTA_HF_CLIENT_DATA *p_data)
{
    tBTA_UTL_COD   cod;

    bta_hf_client_cb.scb.deregister = TRUE;

    /* Clear the Audio service class bit */
    cod.service = BTM_COD_SERVICE_AUDIO;
    FUNC3(&cod, BTA_UTL_CLR_COD_SERVICE_CLASS);

    /* remove sdp record */
    FUNC1(p_data);

    /* remove rfcomm server */
    FUNC0();

    /* disable */
    FUNC2();
}