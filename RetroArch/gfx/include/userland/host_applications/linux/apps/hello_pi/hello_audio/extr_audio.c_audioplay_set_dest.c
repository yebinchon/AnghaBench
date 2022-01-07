
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32_t ;
typedef int ar_dest ;
struct TYPE_9__ {int audio_render; } ;
struct TYPE_7__ {int nVersion; } ;
struct TYPE_8__ {int nSize; scalar_t__ sName; TYPE_1__ nVersion; } ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_2__ OMX_CONFIG_BRCMAUDIODESTINATIONTYPE ;
typedef TYPE_3__ AUDIOPLAY_STATE_T ;


 int ILC_GET_HANDLE (int ) ;
 scalar_t__ OMX_ErrorNone ;
 int OMX_IndexConfigBrcmAudioDestination ;
 scalar_t__ OMX_SetConfig (int ,int ,TYPE_2__*) ;
 int OMX_VERSION ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

int32_t audioplay_set_dest(AUDIOPLAY_STATE_T *st, const char *name)
{
   int32_t success = -1;
   OMX_CONFIG_BRCMAUDIODESTINATIONTYPE ar_dest;

   if (name && strlen(name) < sizeof(ar_dest.sName))
   {
      OMX_ERRORTYPE error;
      memset(&ar_dest, 0, sizeof(ar_dest));
      ar_dest.nSize = sizeof(OMX_CONFIG_BRCMAUDIODESTINATIONTYPE);
      ar_dest.nVersion.nVersion = OMX_VERSION;
      strcpy((char *)ar_dest.sName, name);

      error = OMX_SetConfig(ILC_GET_HANDLE(st->audio_render), OMX_IndexConfigBrcmAudioDestination, &ar_dest);
      assert(error == OMX_ErrorNone);
      success = 0;
   }

   return success;
}
