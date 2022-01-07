
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
typedef int realname ;
typedef int note ;
typedef int USERGROUP ;
struct TYPE_8__ {char* Name; } ;
typedef int TRAFFIC ;
typedef int POLICY ;
typedef int HUB ;
typedef TYPE_1__ FOLDER ;


 int AcAddGroup (int *,int *) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 TYPE_1__* CfgGetFolder (TYPE_1__*,char*) ;
 int CfgGetUniStr (TYPE_1__*,char*,int *,int) ;
 int MAX_SIZE ;
 int * NewGroup (char*,int *,int *) ;
 int ReleaseGroup (int *) ;
 int SetGroupPolicy (int *,int *) ;
 int SetGroupTraffic (int *,int *) ;
 int SiLoadPolicyCfg (int *,TYPE_1__*) ;
 int SiLoadTraffic (TYPE_1__*,char*,int *) ;

void SiLoadGroupCfg(HUB *h, FOLDER *f)
{
 wchar_t realname[MAX_SIZE];
 wchar_t note[MAX_SIZE];
 char *name;
 FOLDER *pf;
 POLICY p;
 TRAFFIC t;
 USERGROUP *g;

 if (h == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 name = f->Name;

 CfgGetUniStr(f, "RealName", realname, sizeof(realname));
 CfgGetUniStr(f, "Note", note, sizeof(note));

 pf = CfgGetFolder(f, "Policy");
 if (pf != ((void*)0))
 {
  SiLoadPolicyCfg(&p, pf);
 }

 SiLoadTraffic(f, "Traffic", &t);

 g = NewGroup(name, realname, note);
 if (g == ((void*)0))
 {
  return;
 }

 if (pf != ((void*)0))
 {
  SetGroupPolicy(g, &p);
 }

 SetGroupTraffic(g, &t);

 AcLock(h);
 {
  AcAddGroup(h, g);
 }
 AcUnlock(h);

 ReleaseGroup(g);
}
