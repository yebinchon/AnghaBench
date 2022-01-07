
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ wSecond; scalar_t__ wMinute; scalar_t__ wHour; } ;
typedef TYPE_1__ SYSTEMTIME ;



USHORT SystemToDosTime(SYSTEMTIME *st)
{
 return (USHORT)(
  ((UINT)st->wHour << 11) |
  ((UINT)st->wMinute << 5) |
  ((UINT)st->wSecond >> 1));
}
