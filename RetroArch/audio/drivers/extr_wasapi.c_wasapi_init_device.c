
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {unsigned int size; TYPE_1__* elems; } ;
typedef int int32_t ;
typedef int UINT32 ;
struct TYPE_2__ {int data; } ;
typedef int IMMDeviceEnumerator ;
typedef int IMMDeviceCollection ;
typedef int IMMDevice ;
typedef int HRESULT ;


 int CLSCTX_ALL ;
 int **** CLSID_MMDeviceEnumerator ;
 int CoCreateInstance (int *****,int *,int ,int *****,void**) ;
 int DEVICE_STATE_ACTIVE ;
 scalar_t__ FAILED (int ) ;
 int IFACE_RELEASE (int *) ;
 int **** IID_IMMDeviceEnumerator ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,...) ;
 int RARCH_WARN (char*) ;
 int _IMMDeviceCollection_GetCount (int *,int*) ;
 int _IMMDeviceCollection_Item (int *,int,int **) ;
 int _IMMDeviceEnumerator_EnumAudioEndpoints (int *,int ,int ,int **) ;
 int _IMMDeviceEnumerator_GetDefaultAudioEndpoint (int *,int ,int ,int **) ;
 int eConsole ;
 int eRender ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ mmdevice_list_new (int *) ;
 scalar_t__ string_is_equal (char const*,int ) ;
 int string_list_free (struct string_list*) ;
 int strtoul (char const*,int *,int ) ;

__attribute__((used)) static IMMDevice *wasapi_init_device(const char *id)
{
   HRESULT hr;
   UINT32 dev_count, i;
   IMMDeviceEnumerator *enumerator = ((void*)0);
   IMMDevice *device = ((void*)0);
   IMMDeviceCollection *collection = ((void*)0);

   if (id)
   {
      RARCH_LOG("[WASAPI]: Initializing device %s ...\n", id);
   }
   else
   {
      RARCH_LOG("[WASAPI]: Initializing default device.. \n");
   }





   hr = CoCreateInstance(&CLSID_MMDeviceEnumerator, ((void*)0), CLSCTX_ALL,
         &IID_IMMDeviceEnumerator, (void **)&enumerator);

   if (FAILED(hr))
      goto error;

   if (id)
   {
      int32_t idx_found = -1;
      struct string_list *list = (struct string_list*)mmdevice_list_new(((void*)0));


      if (list)
      {
         if (list->elems)
         {
            unsigned i;
            for (i = 0; i < list->size; i++)
            {
               RARCH_LOG("[WASAPI]: %d : %s\n", i, list->elems[i].data);
               if (string_is_equal(id, list->elems[i].data))
               {
                  idx_found = i;
                  break;
               }
            }



            if (idx_found == -1 && isdigit(id[0]))
            {
               idx_found = strtoul(id, ((void*)0), 0);
               RARCH_LOG("[WASAPI]: Fallback, device index is a single number index instead: %d.\n", idx_found);

            }
         }
         string_list_free(list);
      }

      if (idx_found == -1)
         idx_found = 0;

      hr = _IMMDeviceEnumerator_EnumAudioEndpoints(enumerator,
            eRender, DEVICE_STATE_ACTIVE, &collection);
      if (FAILED(hr))
         goto error;

      hr = _IMMDeviceCollection_GetCount(collection, &dev_count);
      if (FAILED(hr))
         goto error;

      for (i = 0; i < dev_count; ++i)
      {
         hr = _IMMDeviceCollection_Item(collection, i, &device);
         if (FAILED(hr))
            goto error;

         if (i == idx_found)
            break;

         IFACE_RELEASE(device);
      }
   }
   else
   {
      hr = _IMMDeviceEnumerator_GetDefaultAudioEndpoint(
            enumerator, eRender, eConsole, &device);
      if (FAILED(hr))
         goto error;
   }

   if (!device)
      goto error;

   IFACE_RELEASE(collection);
   IFACE_RELEASE(enumerator);

   return device;

error:
   IFACE_RELEASE(collection);
   IFACE_RELEASE(enumerator);

   if (id)
   {
      RARCH_WARN("[WASAPI]: Failed to initialize device.\n");
   }
   else
   {
      RARCH_ERR("[WASAPI]: Failed to initialize device.\n");
   }

   return ((void*)0);
}
