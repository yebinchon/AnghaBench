
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* input; scalar_t__ inputfc; int cspecial; int type; } ;
typedef TYPE_1__ FCEUGI ;


 int Giggles (int ) ;
 scalar_t__* InputType ;
 scalar_t__* UsrInputType ;
 int cspec ;
 int gametype ;

void ParseGIInput(FCEUGI *gi)
{
 gametype=gi->type;

 InputType[0]=UsrInputType[0];
 InputType[1]=UsrInputType[1];
 InputType[2]=UsrInputType[2];

 if(gi->input[0]>=0)
  InputType[0]=gi->input[0];
 if(gi->input[1]>=0)
  InputType[1]=gi->input[1];
 if(gi->inputfc>=0)
  InputType[2]=gi->inputfc;
 cspec = gi->cspecial;




}
