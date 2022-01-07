
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int String; } ;
typedef TYPE_1__ UNICODE ;
typedef int NDIS_STRING ;



NDIS_STRING *GetUnicode(UNICODE *u)
{

 if (u == ((void*)0))
 {
  return ((void*)0);
 }

 return &u->String;
}
