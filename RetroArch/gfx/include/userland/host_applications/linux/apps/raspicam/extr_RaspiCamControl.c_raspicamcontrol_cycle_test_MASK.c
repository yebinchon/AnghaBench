#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  mmal_mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  mmal_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  mmal_mode; } ;
struct TYPE_6__ {int u; int v; int /*<<< orphan*/  enable; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ MMAL_PARAM_COLOURFX_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  MMAL_PARAM_AWBMODE_AUTO ; 
 int /*<<< orphan*/  MMAL_PARAM_EXPOSUREMODE_AUTO ; 
 int /*<<< orphan*/  MMAL_PARAM_IMAGEFX_NONE ; 
 TYPE_5__* awb_map ; 
 int awb_map_size ; 
 TYPE_4__* exposure_map ; 
 int exposure_map_size ; 
 TYPE_3__* imagefx_map ; 
 int imagefx_map_size ; 
#define  parameter_reset 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(MMAL_COMPONENT_T *camera)
{
   static int parameter = 0;
   static int parameter_option = parameter_reset; // which value the parameter currently has

   FUNC12(camera);

   // We are going to cycle through all the relevant entries in the parameter block
   // and send options to the camera.
   if (parameter == 0)
   {
      // sharpness
      if (FUNC11(&parameter_option, -100, 100, 10))
         FUNC10(camera, parameter_option);
      else
      {
         FUNC10(camera, 0);
         parameter++;
      }
   }
   else if (parameter == 1)
   {
      // contrast
      if (FUNC11(&parameter_option, -100, 100, 10))
         FUNC3(camera, parameter_option);
      else
      {
         FUNC3(camera, 0);
         parameter++;
      }
   }
   else if (parameter == 2)
   {
      // brightness
      if (FUNC11(&parameter_option, 0, 100, 10))
         FUNC1(camera, parameter_option);
      else
      {
         FUNC1(camera, 50);
         parameter++;
      }
   }
   else if (parameter == 3)
   {
      // contrast
      if (FUNC11(&parameter_option, -100, 100, 10))
         FUNC9(camera, parameter_option);
      else
      {
         parameter++;
         FUNC9(camera, 0);
      }
   }
   else if (parameter == 4)
   {
      // EV
      if (FUNC11(&parameter_option, -10, 10, 4))
         FUNC4(camera, parameter_option);
      else
      {
         FUNC4(camera, 0);
         parameter++;
      }
   }
   else if (parameter == 5)
   {
      // MMAL_PARAM_EXPOSUREMODE_T
      if (FUNC11(&parameter_option, 0, exposure_map_size, 1))
         FUNC5(camera, exposure_map[parameter_option].mmal_mode);
      else
      {
         FUNC5(camera, MMAL_PARAM_EXPOSUREMODE_AUTO);
         parameter++;
      }
   }
   else if (parameter == 6)
   {
      // MMAL_PARAM_AWB_T
      if (FUNC11(&parameter_option, 0, awb_map_size, 1))
         FUNC0(camera, awb_map[parameter_option].mmal_mode);
      else
      {
         FUNC0(camera, MMAL_PARAM_AWBMODE_AUTO);
         parameter++;
      }
   }
   if (parameter == 7)
   {
      // MMAL_PARAM_IMAGEFX_T
      if (FUNC11(&parameter_option, 0, imagefx_map_size, 1))
         FUNC7(camera, imagefx_map[parameter_option].mmal_mode);
      else
      {
         FUNC7(camera, MMAL_PARAM_IMAGEFX_NONE);
         parameter++;
      }
   }
   if (parameter == 8)
   {
      MMAL_PARAM_COLOURFX_T colfx = {0,0,0};
      switch (parameter_option)
      {
      case parameter_reset :
         parameter_option = 1;
         colfx.u = 128;
         colfx.v = 128;
         break;
      case 1 :
         parameter_option = 2;
         colfx.u = 100;
         colfx.v = 200;
         break;
      case 2 :
         parameter_option = parameter_reset;
         colfx.enable = 0;
         parameter++;
         break;
      }
      FUNC2(camera, &colfx);
   }

   // Orientation
   if (parameter == 9)
   {
      switch (parameter_option)
      {
      case parameter_reset:
         FUNC8(camera, 90);
         parameter_option = 1;
         break;

      case 1 :
         FUNC8(camera, 180);
         parameter_option = 2;
         break;

      case 2 :
         FUNC8(camera, 270);
         parameter_option = 3;
         break;

      case 3 :
      {
         FUNC8(camera, 0);
         FUNC6(camera, 1,0);
         parameter_option = 4;
         break;
      }
      case 4 :
      {
         FUNC6(camera, 0,1);
         parameter_option = 5;
         break;
      }
      case 5 :
      {
         FUNC6(camera, 1, 1);
         parameter_option = 6;
         break;
      }
      case 6 :
      {
         FUNC6(camera, 0, 0);
         parameter_option = parameter_reset;
         parameter++;
         break;
      }
      }
   }

   if (parameter == 10)
   {
      parameter = 1;
      return 0;
   }

   return 1;
}