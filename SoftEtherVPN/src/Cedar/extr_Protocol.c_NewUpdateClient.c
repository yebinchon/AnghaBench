
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UPDATE_NOTIFY_PROC ;
typedef int UPDATE_ISFOREGROUND_PROC ;
typedef int UPDATE_CLIENT_SETTING ;
struct TYPE_5__ {int Thread; int HaltEvent; void* Param; int Setting; int MyLanguage; int MyDate; scalar_t__ MyBuild; int SoftwareTitle; int SoftwareName; int FamilyName; int ClientId; int * IsForegroundCb; int * Callback; } ;
typedef TYPE_1__ UPDATE_CLIENT ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;


 int Copy (int *,int *,int) ;
 int NewEvent () ;
 int NewThread (int ,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 int UniStrCpy (int ,int,int *) ;
 int UpdateClientThreadProc ;
 TYPE_1__* ZeroMalloc (int) ;

UPDATE_CLIENT *NewUpdateClient(UPDATE_NOTIFY_PROC *cb, UPDATE_ISFOREGROUND_PROC *isforeground_cb, void *param, char *family_name, char *software_name, wchar_t *software_title, UINT my_build, UINT64 my_date, char *my_lang, UPDATE_CLIENT_SETTING *current_setting, char *client_id)
{
 UPDATE_CLIENT *c;

 if (family_name == ((void*)0) || software_title == ((void*)0) || software_name == ((void*)0) || my_build == 0 ||
  my_lang == ((void*)0) || current_setting == ((void*)0) || cb == ((void*)0))
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(UPDATE_CLIENT));

 c->Callback = cb;
 c->IsForegroundCb = isforeground_cb;

 StrCpy(c->ClientId, sizeof(c->ClientId), client_id);
 StrCpy(c->FamilyName, sizeof(c->FamilyName), family_name);
 StrCpy(c->SoftwareName, sizeof(c->SoftwareName), software_name);
 UniStrCpy(c->SoftwareTitle, sizeof(c->SoftwareTitle), software_title);
 c->MyBuild = my_build;
 c->MyDate = my_date;
 StrCpy(c->MyLanguage, sizeof(c->MyLanguage), my_lang);

 Copy(&c->Setting, current_setting, sizeof(c->Setting));

 c->Param = param;

 c->HaltEvent = NewEvent();


 c->Thread = NewThread(UpdateClientThreadProc, c);

 return c;
}
