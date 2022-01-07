
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sizeupvalues; TYPE_1__* upvalues; } ;
struct TYPE_4__ {int name; } ;
typedef int TString ;
typedef TYPE_2__ Proto ;


 int * check_exp (int,int ) ;
 char const* getstr (int *) ;

__attribute__((used)) static const char *upvalname (Proto *p, int uv) {
  TString *s = check_exp(uv < p->sizeupvalues, p->upvalues[uv].name);
  if (s == ((void*)0)) return "?";
  else return getstr(s);
}
