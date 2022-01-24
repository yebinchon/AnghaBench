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
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int WFCint ;
struct TYPE_2__ {scalar_t__ num_of_elements; scalar_t__* element; float dest_width; float dest_height; int src_x; int src_y; int src_width; int src_height; int /*<<< orphan*/  context; int /*<<< orphan*/  device; int /*<<< orphan*/  stop_bouncing; int /*<<< orphan*/  source; } ;
typedef  TYPE_1__ WFC_BOUNCE_DATA_T ;
typedef  scalar_t__ WFCElement ;

/* Variables and functions */
 int /*<<< orphan*/  NO_ATTRIBUTES ; 
 int NUM_OF_ELEMENTS ; 
 int /*<<< orphan*/  WFC_CONTEXT_BG_COLOR ; 
 int /*<<< orphan*/  WFC_CONTEXT_TARGET_HEIGHT ; 
 int /*<<< orphan*/  WFC_CONTEXT_TARGET_WIDTH ; 
 int /*<<< orphan*/  WFC_ELEMENT_DESTINATION_RECTANGLE ; 
 int /*<<< orphan*/  WFC_ELEMENT_GLOBAL_ALPHA ; 
 int /*<<< orphan*/  WFC_ELEMENT_SOURCE ; 
 int /*<<< orphan*/  WFC_ELEMENT_SOURCE_RECTANGLE ; 
 int /*<<< orphan*/  WFC_ELEMENT_TRANSPARENCY_TYPES ; 
 scalar_t__ WFC_ERROR_NONE ; 
 scalar_t__ WFC_INVALID_HANDLE ; 
 size_t WFC_RECT_HEIGHT ; 
 int WFC_RECT_SIZE ; 
 size_t WFC_RECT_WIDTH ; 
 size_t WFC_RECT_X ; 
 size_t WFC_RECT_Y ; 
 int /*<<< orphan*/  WFC_TRANSPARENCY_ELEMENT_GLOBAL_ALPHA ; 
 int /*<<< orphan*/  WFC_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int*) ; 

void *FUNC13(void *param)
// Thread function for making previously-created source bounce around the screen.
{
   WFC_BOUNCE_DATA_T *bounce_data = (WFC_BOUNCE_DATA_T *) param;

   uint32_t i;
   int32_t xstep[NUM_OF_ELEMENTS], ystep[NUM_OF_ELEMENTS];
   WFCint dest_rect[NUM_OF_ELEMENTS][WFC_RECT_SIZE];
   WFCint src_rect[WFC_RECT_SIZE];
   WFCElement element_local[NUM_OF_ELEMENTS];

   uint32_t num_of_elements = NUM_OF_ELEMENTS;
   WFCElement *element = element_local;

   // Get context (i.e. screen) dimensions.
   int32_t ctx_width;
   int32_t ctx_height;
   int32_t dest_width, dest_height;

   int32_t x, y;

   bool use_local_elements = (bounce_data->num_of_elements == 0);
   if(!use_local_elements)
   {
      FUNC0(bounce_data->num_of_elements <= NUM_OF_ELEMENTS);
      FUNC0(bounce_data->element != NULL);
      num_of_elements = bounce_data->num_of_elements;
      element = bounce_data->element;
   } // if

   // Initialise values
   ctx_width = FUNC6(bounce_data->device,
      bounce_data->context, WFC_CONTEXT_TARGET_WIDTH);
   ctx_height = FUNC6(bounce_data->device,
      bounce_data->context, WFC_CONTEXT_TARGET_HEIGHT);

   // Change background colour
   FUNC9(bounce_data->device,
      bounce_data->context, WFC_CONTEXT_BG_COLOR, 0x0000FFFF);

   float scale = 0.4;
   if(num_of_elements == 1)
      {scale = 0.75;}

   dest_width = bounce_data->dest_width * scale;
   dest_height = bounce_data->dest_height * scale;

   // Define source rectangle
   src_rect[WFC_RECT_X] = bounce_data->src_x;
   src_rect[WFC_RECT_Y] = bounce_data->src_y;
   src_rect[WFC_RECT_WIDTH] = bounce_data->src_width;
   src_rect[WFC_RECT_HEIGHT] = bounce_data->src_height;

   for(i = 0; i < num_of_elements; i++)
   {
      if(use_local_elements)
      {
         // Create and set up element
         element[i] = FUNC4(bounce_data->device,
            bounce_data->context, NO_ATTRIBUTES);
         FUNC0(element[i] != WFC_INVALID_HANDLE);

         FUNC8(bounce_data->device, element[i], WFC_INVALID_HANDLE);
         if(FUNC2(FUNC7(bounce_data->device) == WFC_ERROR_NONE)) {};
      } // if
      else
      {
         // Element created in calling app, so use that
         element[i] = bounce_data->element[i];
      } // else

      FUNC12(bounce_data->device, element[i],
         WFC_ELEMENT_SOURCE_RECTANGLE, WFC_RECT_SIZE, src_rect);

      // Attach existing source
      FUNC11(bounce_data->device, element[i],
         WFC_ELEMENT_SOURCE, bounce_data->source);

      if(num_of_elements > 1)
      {
         FUNC11(bounce_data->device, element[i],
            WFC_ELEMENT_TRANSPARENCY_TYPES, WFC_TRANSPARENCY_ELEMENT_GLOBAL_ALPHA);
         FUNC10(bounce_data->device, element[i],
            WFC_ELEMENT_GLOBAL_ALPHA, 0.75);
      } // if

      // Define initial destination rectangle
      dest_rect[i][WFC_RECT_X] = i * 100;
      dest_rect[i][WFC_RECT_Y] = i * 10;
      dest_rect[i][WFC_RECT_WIDTH] = dest_width;
      dest_rect[i][WFC_RECT_HEIGHT] = dest_height;
      FUNC12(bounce_data->device, element[i],
         WFC_ELEMENT_DESTINATION_RECTANGLE, WFC_RECT_SIZE, dest_rect[i]);

      xstep[i] = (i + 1) * 2;
      ystep[i] = (i + 1) * 2;
   } // for

   while(!bounce_data->stop_bouncing)
   {
      for(i = 0; i < num_of_elements; i++)
      {
         // Compute new x and y values.
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

         // Set updated destination rectangle
         FUNC12(bounce_data->device, element[i],
            WFC_ELEMENT_DESTINATION_RECTANGLE, WFC_RECT_SIZE, dest_rect[i]);
      } // for

      FUNC3(bounce_data->device, bounce_data->context, WFC_TRUE);
      FUNC1(30);
   } // while

   // Remove elements
   if(use_local_elements)
   {
      for(i = 0; i < num_of_elements; i++)
      {
         FUNC5(bounce_data->device, element[i]);
      } // for
   } // if

   // Change background colour
   FUNC9(bounce_data->device,
      bounce_data->context, WFC_CONTEXT_BG_COLOR, 0xFF0000FF);

   FUNC3(bounce_data->device, bounce_data->context, WFC_TRUE);

   return NULL;
}