
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int filename ;
typedef int UINT ;
struct TYPE_14__ {TYPE_3__* Server; } ;
struct TYPE_13__ {int FileData; } ;
struct TYPE_12__ {TYPE_1__* Cedar; TYPE_2__* CfgRw; } ;
struct TYPE_11__ {int FileName; } ;
struct TYPE_10__ {int Bridge; } ;
typedef TYPE_3__ SERVER ;
typedef TYPE_4__ RPC_CONFIG ;
typedef int IO ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,int *,char*) ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NO_ERROR ;
 int FileClose (int *) ;
 int * FileCreate (char*) ;
 int FileWrite (int *,int ,int ) ;
 int Format (char*,int,char*,int ) ;
 int IncrementServerConfigRevision (TYPE_3__*) ;
 int MAX_PATH ;
 int SERVER_ADMIN_ONLY ;
 int SiRebootServer (int ) ;
 int StrLen (int ) ;

UINT StSetConfig(ADMIN *a, RPC_CONFIG *t)
{
 SERVER *s;
 IO *o;
 char filename[MAX_PATH];

 SERVER_ADMIN_ONLY;

 s = a->Server;
 if (s->CfgRw == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }


 Format(filename, sizeof(filename), "%s.new", s->CfgRw->FileName);

 o = FileCreate(filename);

 FileWrite(o, t->FileData, StrLen(t->FileData));

 FileClose(o);

 IncrementServerConfigRevision(s);

 ALog(a, ((void*)0), "LA_SET_CONFIG");


 SiRebootServer(s->Cedar->Bridge);

 return ERR_NO_ERROR;
}
