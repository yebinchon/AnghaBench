
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef int amq_string ;
typedef int XDR ;


 int AMQ_STRLEN ;
 int FALSE ;
 int TRUE ;
 int xdr_string (int *,int *,int ) ;

bool_t
xdr_amq_string(XDR *xdrs, amq_string *objp)
{
  if (!xdr_string(xdrs, objp, AMQ_STRLEN)) {
    return (FALSE);
  }
  return (TRUE);
}
