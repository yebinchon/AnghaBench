
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int32_t ;
typedef int WFCint ;
struct TYPE_2__ {scalar_t__ num_of_elements; scalar_t__* element; float dest_width; float dest_height; int src_x; int src_y; int src_width; int src_height; int context; int device; int stop_bouncing; int source; } ;
typedef TYPE_1__ WFC_BOUNCE_DATA_T ;
typedef scalar_t__ WFCElement ;


 int NO_ATTRIBUTES ;
 int NUM_OF_ELEMENTS ;
 int WFC_CONTEXT_BG_COLOR ;
 int WFC_CONTEXT_TARGET_HEIGHT ;
 int WFC_CONTEXT_TARGET_WIDTH ;
 int WFC_ELEMENT_DESTINATION_RECTANGLE ;
 int WFC_ELEMENT_GLOBAL_ALPHA ;
 int WFC_ELEMENT_SOURCE ;
 int WFC_ELEMENT_SOURCE_RECTANGLE ;
 int WFC_ELEMENT_TRANSPARENCY_TYPES ;
 scalar_t__ WFC_ERROR_NONE ;
 scalar_t__ WFC_INVALID_HANDLE ;
 size_t WFC_RECT_HEIGHT ;
 int WFC_RECT_SIZE ;
 size_t WFC_RECT_WIDTH ;
 size_t WFC_RECT_X ;
 size_t WFC_RECT_Y ;
 int WFC_TRANSPARENCY_ELEMENT_GLOBAL_ALPHA ;
 int WFC_TRUE ;
 int vcos_assert (int) ;
 int vcos_sleep (int) ;
 scalar_t__ vcos_verify (int) ;
 int wfcCommit (int ,int ,int ) ;
 scalar_t__ wfcCreateElement (int ,int ,int ) ;
 int wfcDestroyElement (int ,scalar_t__) ;
 int wfcGetContextAttribi (int ,int ,int ) ;
 scalar_t__ wfcGetError (int ) ;
 int wfcInsertElement (int ,scalar_t__,scalar_t__) ;
 int wfcSetContextAttribi (int ,int ,int ,int) ;
 int wfcSetElementAttribf (int ,scalar_t__,int ,double) ;
 int wfcSetElementAttribi (int ,scalar_t__,int ,int ) ;
 int wfcSetElementAttribiv (int ,scalar_t__,int ,int,int*) ;

void *platform_wfc_bounce_thread(void *param)

{
   WFC_BOUNCE_DATA_T *bounce_data = (WFC_BOUNCE_DATA_T *) param;

   uint32_t i;
   int32_t xstep[NUM_OF_ELEMENTS], ystep[NUM_OF_ELEMENTS];
   WFCint dest_rect[NUM_OF_ELEMENTS][WFC_RECT_SIZE];
   WFCint src_rect[WFC_RECT_SIZE];
   WFCElement element_local[NUM_OF_ELEMENTS];

   uint32_t num_of_elements = NUM_OF_ELEMENTS;
   WFCElement *element = element_local;


   int32_t ctx_width;
   int32_t ctx_height;
   int32_t dest_width, dest_height;

   int32_t x, y;

   bool use_local_elements = (bounce_data->num_of_elements == 0);
   if(!use_local_elements)
   {
      vcos_assert(bounce_data->num_of_elements <= NUM_OF_ELEMENTS);
      vcos_assert(bounce_data->element != ((void*)0));
      num_of_elements = bounce_data->num_of_elements;
      element = bounce_data->element;
   }


   ctx_width = wfcGetContextAttribi(bounce_data->device,
      bounce_data->context, WFC_CONTEXT_TARGET_WIDTH);
   ctx_height = wfcGetContextAttribi(bounce_data->device,
      bounce_data->context, WFC_CONTEXT_TARGET_HEIGHT);


   wfcSetContextAttribi(bounce_data->device,
      bounce_data->context, WFC_CONTEXT_BG_COLOR, 0x0000FFFF);

   float scale = 0.4;
   if(num_of_elements == 1)
      {scale = 0.75;}

   dest_width = bounce_data->dest_width * scale;
   dest_height = bounce_data->dest_height * scale;


   src_rect[WFC_RECT_X] = bounce_data->src_x;
   src_rect[WFC_RECT_Y] = bounce_data->src_y;
   src_rect[WFC_RECT_WIDTH] = bounce_data->src_width;
   src_rect[WFC_RECT_HEIGHT] = bounce_data->src_height;

   for(i = 0; i < num_of_elements; i++)
   {
      if(use_local_elements)
      {

         element[i] = wfcCreateElement(bounce_data->device,
            bounce_data->context, NO_ATTRIBUTES);
         vcos_assert(element[i] != WFC_INVALID_HANDLE);

         wfcInsertElement(bounce_data->device, element[i], WFC_INVALID_HANDLE);
         if(vcos_verify(wfcGetError(bounce_data->device) == WFC_ERROR_NONE)) {};
      }
      else
      {

         element[i] = bounce_data->element[i];
      }

      wfcSetElementAttribiv(bounce_data->device, element[i],
         WFC_ELEMENT_SOURCE_RECTANGLE, WFC_RECT_SIZE, src_rect);


      wfcSetElementAttribi(bounce_data->device, element[i],
         WFC_ELEMENT_SOURCE, bounce_data->source);

      if(num_of_elements > 1)
      {
         wfcSetElementAttribi(bounce_data->device, element[i],
            WFC_ELEMENT_TRANSPARENCY_TYPES, WFC_TRANSPARENCY_ELEMENT_GLOBAL_ALPHA);
         wfcSetElementAttribf(bounce_data->device, element[i],
            WFC_ELEMENT_GLOBAL_ALPHA, 0.75);
      }


      dest_rect[i][WFC_RECT_X] = i * 100;
      dest_rect[i][WFC_RECT_Y] = i * 10;
      dest_rect[i][WFC_RECT_WIDTH] = dest_width;
      dest_rect[i][WFC_RECT_HEIGHT] = dest_height;
      wfcSetElementAttribiv(bounce_data->device, element[i],
         WFC_ELEMENT_DESTINATION_RECTANGLE, WFC_RECT_SIZE, dest_rect[i]);

      xstep[i] = (i + 1) * 2;
      ystep[i] = (i + 1) * 2;
   }

   while(!bounce_data->stop_bouncing)
   {
      for(i = 0; i < num_of_elements; i++)
      {

         x = dest_rect[i][WFC_RECT_X];
         y = dest_rect[i][WFC_RECT_Y];

         x += xstep[i];
         if(x + dest_width >= ctx_width)
            {x = ctx_width - dest_width - 1; xstep[i] *= -1;}
         else if(x < 0)
            {x = 0; xstep[i] *= -1;}

         y += ystep[i];
         if(y + dest_height >= ctx_height)
            {y = ctx_height - dest_height - 1; ystep[i] *= -1;}
         else if(y < 0)
            {y = 0; ystep[i] *= -1;}

         dest_rect[i][WFC_RECT_X] = x;
         dest_rect[i][WFC_RECT_Y] = y;


         wfcSetElementAttribiv(bounce_data->device, element[i],
            WFC_ELEMENT_DESTINATION_RECTANGLE, WFC_RECT_SIZE, dest_rect[i]);
      }

      wfcCommit(bounce_data->device, bounce_data->context, WFC_TRUE);
      vcos_sleep(30);
   }


   if(use_local_elements)
   {
      for(i = 0; i < num_of_elements; i++)
      {
         wfcDestroyElement(bounce_data->device, element[i]);
      }
   }


   wfcSetContextAttribi(bounce_data->device,
      bounce_data->context, WFC_CONTEXT_BG_COLOR, 0xFF0000FF);

   wfcCommit(bounce_data->device, bounce_data->context, WFC_TRUE);

   return ((void*)0);
}
