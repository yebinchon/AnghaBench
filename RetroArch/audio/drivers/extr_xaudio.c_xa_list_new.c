
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
typedef unsigned int uint32_t ;
typedef void string_list ;
struct TYPE_3__ {int DisplayName; } ;
typedef TYPE_1__ XAUDIO2_DEVICE_DETAILS ;
typedef int IXAudio2 ;


 scalar_t__ FAILED (int ) ;
 int IXAudio2_GetDeviceCount (int *,unsigned int*) ;
 scalar_t__ IXAudio2_GetDeviceDetails (int *,unsigned int,TYPE_1__*) ;
 int IXAudio2_Release (int *) ;
 scalar_t__ S_OK ;
 int XAUDIO2_DEFAULT_PROCESSOR ;
 int XAudio2Create (int **,int ,int ) ;
 int free (char*) ;
 void* mmdevice_list_new (void*) ;
 int string_list_append (void*,char*,union string_list_elem_attr) ;
 void* string_list_new () ;
 char* utf16_to_utf8_string_alloc (int ) ;

__attribute__((used)) static void *xa_list_new(void *u)
{

   unsigned i;
   union string_list_elem_attr attr;
   uint32_t dev_count = 0;
   IXAudio2 *ixa2 = ((void*)0);
   struct string_list *sl = string_list_new();

   if (!sl)
      return ((void*)0);

   attr.i = 0;

   if (FAILED(XAudio2Create(&ixa2, 0, XAUDIO2_DEFAULT_PROCESSOR)))
      return ((void*)0);

   IXAudio2_GetDeviceCount(ixa2, &dev_count);

   for (i = 0; i < dev_count; i++)
   {
      XAUDIO2_DEVICE_DETAILS dev_detail;
      if (IXAudio2_GetDeviceDetails(ixa2, i, &dev_detail) == S_OK)
      {
         char *str = utf16_to_utf8_string_alloc(dev_detail.DisplayName);

         if (str)
         {
            string_list_append(sl, str, attr);
            free(str);
         }
      }
   }

   IXAudio2_Release(ixa2);

   return sl;





}
