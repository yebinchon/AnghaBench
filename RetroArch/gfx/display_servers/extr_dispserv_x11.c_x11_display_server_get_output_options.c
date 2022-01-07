
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int s ;
struct TYPE_6__ {int noutput; int * outputs; } ;
typedef TYPE_1__ XRRScreenResources ;
struct TYPE_7__ {char* name; } ;
typedef TYPE_2__ XRROutputInfo ;
typedef int Window ;
typedef int Display ;


 int DefaultScreen (int *) ;
 int PATH_MAX_LENGTH ;
 int RootWindow (int *,int ) ;
 int * XOpenDisplay (int ) ;
 TYPE_2__* XRRGetOutputInfo (int *,TYPE_1__*,int ) ;
 TYPE_1__* XRRGetScreenResources (int *,int ) ;
 int strlcat (char*,char*,int) ;

const char *x11_display_server_get_output_options(void *data)
{
   return "HDMI-0|HDMI-1|HDMI-2|HDMI-3|DVI-0|DVI-1|DVI-2|DVI-3|VGA-0|VGA-1|VGA-2|VGA-3|Config";

}
