
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_t ;
typedef int boolean ;


 int F_CastResponder (int *) ;
 int finalestage ;

boolean F_Responder (event_t *event)
{
    if (finalestage == 2)
 return F_CastResponder (event);

    return 0;
}
