#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* audio_device; } ;
struct TYPE_5__ {TYPE_1__ arrays; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char*,char**) ; 

__attribute__((used)) static int FUNC4(char **dest_ports, const char **jports)
{
   int i;
   char           *save   = NULL;
   int           parsed   = 0;
   settings_t *settings   = FUNC0();
   char *audio_device_cpy = FUNC2(settings->arrays.audio_device);
   const char      *con   = FUNC3(audio_device_cpy, ",", &save);

   if (con)
      dest_ports[parsed++] = FUNC2(con);
   con = FUNC3(NULL, ",", &save);
   if (con)
      dest_ports[parsed++] = FUNC2(con);

   for (i = parsed; i < 2; i++)
      dest_ports[i] = FUNC2(jports[i]);

   FUNC1(audio_device_cpy);
   return 2;
}