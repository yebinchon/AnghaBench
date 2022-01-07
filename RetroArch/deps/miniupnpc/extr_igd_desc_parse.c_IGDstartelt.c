
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* controlurl; char* eventsuburl; char* scpdurl; char* servicetype; } ;
struct IGDdatas {char* cureltname; TYPE_1__ tmp; int level; } ;


 int MINIUPNPC_URL_MAXSIZE ;
 int memcmp (char const*,char*,int) ;
 int memcpy (char*,char const*,int) ;

void IGDstartelt(void * d, const char * name, int l)
{
 struct IGDdatas * datas = (struct IGDdatas *)d;
 if(l >= MINIUPNPC_URL_MAXSIZE)
  l = MINIUPNPC_URL_MAXSIZE-1;
 memcpy(datas->cureltname, name, l);
 datas->cureltname[l] = '\0';
 datas->level++;
 if( (l==7) && !memcmp(name, "service", l) ) {
  datas->tmp.controlurl[0] = '\0';
  datas->tmp.eventsuburl[0] = '\0';
  datas->tmp.scpdurl[0] = '\0';
  datas->tmp.servicetype[0] = '\0';
 }
}
