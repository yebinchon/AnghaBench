
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* servicetype; char* controlurl; char* eventsuburl; char* scpdurl; } ;
struct IGDdatas {char* urlbase; char* presentationurl; TYPE_1__ tmp; int cureltname; } ;


 int MINIUPNPC_URL_MAXSIZE ;
 int memcpy (char*,char const*,int) ;
 int strcmp (int ,char*) ;

void IGDdata(void * d, const char * data, int l)
{
 struct IGDdatas * datas = (struct IGDdatas *)d;
 char * dstmember = 0;


 if( !strcmp(datas->cureltname, "URLBase") )
  dstmember = datas->urlbase;
 else if( !strcmp(datas->cureltname, "presentationURL") )
  dstmember = datas->presentationurl;
 else if( !strcmp(datas->cureltname, "serviceType") )
  dstmember = datas->tmp.servicetype;
 else if( !strcmp(datas->cureltname, "controlURL") )
  dstmember = datas->tmp.controlurl;
 else if( !strcmp(datas->cureltname, "eventSubURL") )
  dstmember = datas->tmp.eventsuburl;
 else if( !strcmp(datas->cureltname, "SCPDURL") )
  dstmember = datas->tmp.scpdurl;


 if(dstmember)
 {
  if(l>=MINIUPNPC_URL_MAXSIZE)
   l = MINIUPNPC_URL_MAXSIZE-1;
  memcpy(dstmember, data, l);
  dstmember[l] = '\0';
 }
}
