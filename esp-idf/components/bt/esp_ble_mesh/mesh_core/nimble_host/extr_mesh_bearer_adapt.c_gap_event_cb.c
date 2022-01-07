
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_gap_event {int dummy; } ;



__attribute__((used)) static int gap_event_cb(struct ble_gap_event *event, void *arg)
{
    return 0;
}
