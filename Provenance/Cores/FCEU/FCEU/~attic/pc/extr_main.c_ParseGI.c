
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ FCEUGI ;


 int ParseGIInput (TYPE_1__*) ;
 int gametype ;

__attribute__((used)) static void ParseGI(FCEUGI *gi)
{
 ParseGIInput(gi);
 gametype=gi->type;
}
