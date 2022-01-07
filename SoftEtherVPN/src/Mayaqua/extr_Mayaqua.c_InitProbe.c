
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MsGetHiResCounter () ;
 int NewBuf () ;
 int NewLock () ;
 int probe_buf ;
 int probe_enabled ;
 int probe_lock ;
 scalar_t__ probe_start ;

void InitProbe()
{
 probe_buf = NewBuf();
 probe_lock = NewLock();
 probe_enabled = 0;

 probe_start = 0;




}
