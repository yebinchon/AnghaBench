#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {unsigned int size; TYPE_1__* elems; } ;
typedef  int int32_t ;
typedef  int UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  IMMDeviceEnumerator ;
typedef  int /*<<< orphan*/  IMMDeviceCollection ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_ALL ; 
 int /*<<< orphan*/ **** CLSID_MMDeviceEnumerator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *****,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *****,void**) ; 
 int /*<<< orphan*/  DEVICE_STATE_ACTIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ **** IID_IMMDeviceEnumerator ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  eConsole ; 
 int /*<<< orphan*/  eRender ; 
 scalar_t__ FUNC10 (char const) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct string_list*) ; 
 int FUNC14 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static IMMDevice *FUNC15(const char *id)
{
   HRESULT hr;
   UINT32 dev_count, i;
   IMMDeviceEnumerator *enumerator = NULL;
   IMMDevice *device               = NULL;
   IMMDeviceCollection *collection = NULL;

   if (id)
   {
      FUNC4("[WASAPI]: Initializing device %s ...\n", id);
   }
   else
   {
      FUNC4("[WASAPI]: Initializing default device.. \n");
   }

#ifdef __cplusplus
   hr = CoCreateInstance(CLSID_MMDeviceEnumerator, NULL, CLSCTX_ALL,
         IID_IMMDeviceEnumerator, (void **)&enumerator);
#else
   hr = FUNC0(&CLSID_MMDeviceEnumerator, NULL, CLSCTX_ALL,
         &IID_IMMDeviceEnumerator, (void **)&enumerator);
#endif
   if (FUNC1(hr))
      goto error;

   if (id)
   {
      int32_t idx_found        = -1;
      struct string_list *list = (struct string_list*)FUNC11(NULL);

      /* Search for device name first */
      if (list)
      {
         if (list->elems)
         {
            unsigned i;
            for (i = 0; i < list->size; i++)
            {
               FUNC4("[WASAPI]: %d : %s\n", i, list->elems[i].data);
               if (FUNC12(id, list->elems[i].data))
               {
                  idx_found = i;
                  break;
               }
            }
            /* Index was not found yet based on name string,
             * just assume id is a one-character number index. */

            if (idx_found == -1 && FUNC10(id[0]))
            {
               idx_found = FUNC14(id, NULL, 0);
               FUNC4("[WASAPI]: Fallback, device index is a single number index instead: %d.\n", idx_found);

            }
         }
         FUNC13(list);
      }

      if (idx_found == -1)
         idx_found = 0;

      hr = FUNC8(enumerator,
            eRender, DEVICE_STATE_ACTIVE, &collection);
      if (FUNC1(hr))
         goto error;

      hr = FUNC6(collection, &dev_count);
      if (FUNC1(hr))
         goto error;

      for (i = 0; i < dev_count; ++i)
      {
         hr = FUNC7(collection, i, &device);
         if (FUNC1(hr))
            goto error;

         if (i == idx_found)
            break;

         FUNC2(device);
      }
   }
   else
   {
      hr = FUNC9(
            enumerator, eRender, eConsole, &device);
      if (FUNC1(hr))
         goto error;
   }

   if (!device)
      goto error;

   FUNC2(collection);
   FUNC2(enumerator);

   return device;

error:
   FUNC2(collection);
   FUNC2(enumerator);

   if (id)
   {
      FUNC5("[WASAPI]: Failed to initialize device.\n");
   }
   else
   {
      FUNC3("[WASAPI]: Failed to initialize device.\n");
   }

   return NULL;
}