
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;


 int IsProbeEnabled () ;
 int Lock (int ) ;
 int MAX_SIZE ;
 scalar_t__ MIN (int,int) ;
 int MakeCharArray2 (char*,char,scalar_t__) ;
 scalar_t__ MsGetHiResCounter () ;
 scalar_t__ MsGetHiResTimeSpanUSec (scalar_t__) ;
 scalar_t__ StrLen (char*) ;
 int ToStr64 (char*,scalar_t__) ;
 int Unlock (int ) ;
 int WriteBuf (int ,char*,scalar_t__) ;
 int probe_buf ;
 scalar_t__ probe_last ;
 int probe_lock ;
 scalar_t__ probe_start ;

void WriteProbe(char *filename, UINT line, char *str)
{
}
