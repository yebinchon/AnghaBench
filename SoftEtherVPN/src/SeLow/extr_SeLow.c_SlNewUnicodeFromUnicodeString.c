
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Length; int Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
struct TYPE_6__ {int Length; int MaximumLength; void* Buffer; } ;
struct TYPE_8__ {TYPE_1__ String; } ;
typedef TYPE_3__ SL_UNICODE ;


 int SlCopy (void*,int ,int) ;
 void* SlZeroMalloc (int) ;

SL_UNICODE *SlNewUnicodeFromUnicodeString(UNICODE_STRING *src)
{
 SL_UNICODE *u;

 if (src == ((void*)0))
 {
  return ((void*)0);
 }


 u = SlZeroMalloc(sizeof(SL_UNICODE));
 if (u == ((void*)0))
 {
  return ((void*)0);
 }

 u->String.Length = u->String.MaximumLength = src->Length;

 u->String.Buffer = SlZeroMalloc(src->Length);
 SlCopy(u->String.Buffer, src->Buffer, src->Length);

 return u;
}
