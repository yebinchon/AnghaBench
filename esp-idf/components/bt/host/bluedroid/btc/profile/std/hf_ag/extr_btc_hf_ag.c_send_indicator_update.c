
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* value; void* type; } ;
struct TYPE_6__ {TYPE_1__ ind; } ;
typedef TYPE_2__ tBTA_AG_RES_DATA ;
typedef void* UINT16 ;


 int BTA_AG_HANDLE_ALL ;
 int BTA_AG_IND_RES ;
 int BTA_AgResult (int ,int ,TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void send_indicator_update(UINT16 indicator, UINT16 value)
{
    tBTA_AG_RES_DATA ag_res;
    memset(&ag_res, 0, sizeof(tBTA_AG_RES_DATA));
    ag_res.ind.type = indicator;
    ag_res.ind.value = value;
    BTA_AgResult(BTA_AG_HANDLE_ALL, BTA_AG_IND_RES, &ag_res);
}
