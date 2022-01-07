
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef int * MMAL_PORT_BH_CB_T ;


 int MMAL_PARAM_UNUSED (int *) ;
 int MMAL_SUCCESS ;
 int SDL_PauseAudio (int ) ;

__attribute__((used)) static MMAL_STATUS_T sdl_port_enable(MMAL_PORT_T *port, MMAL_PORT_BH_CB_T cb)
{
   MMAL_PARAM_UNUSED(port);
   MMAL_PARAM_UNUSED(cb);
   SDL_PauseAudio( 0 );
   return MMAL_SUCCESS;
}
