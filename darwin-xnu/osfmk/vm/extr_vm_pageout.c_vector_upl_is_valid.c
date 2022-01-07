
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vector_upl_t ;
typedef TYPE_1__* upl_t ;
typedef int boolean_t ;
struct TYPE_3__ {int flags; int * vector_upl; } ;


 int FALSE ;
 int TRUE ;
 int UPL_VECTOR ;

boolean_t
vector_upl_is_valid(upl_t upl)
{
 if(upl && ((upl->flags & UPL_VECTOR)==UPL_VECTOR)) {
  vector_upl_t vector_upl = upl->vector_upl;
  if(vector_upl == ((void*)0) || vector_upl == (vector_upl_t)0xfeedfeed || vector_upl == (vector_upl_t)0xfeedbeef)
   return FALSE;
  else
   return TRUE;
 }
 return FALSE;
}
