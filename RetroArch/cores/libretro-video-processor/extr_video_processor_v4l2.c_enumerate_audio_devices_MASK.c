#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 char* FUNC4 (void*,char*) ; 
 scalar_t__ FUNC5 (int,char*,void***) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(char *buf, size_t buflen)
{
   FUNC2(buf, 0, buflen);

   FUNC0(buf, "Audio capture device; ", buflen);

#ifdef HAVE_ALSA
   void **hints, **n;
   char *ioid, *name;
   int ndevs;

   if (snd_device_name_hint(-1, "pcm", &hints) < 0)
      return;

   ndevs = 0;
   for (n = hints; *n; n++)
   {
      name = snd_device_name_get_hint(*n, "NAME");
      ioid = snd_device_name_get_hint(*n, "IOID");
      if ((ioid == NULL || string_is_equal(ioid, "Input")) &&
          (!strncmp(name, "hw:", strlen("hw:")) ||
           !strncmp(name, "default:", strlen("default:"))))
      {
         if (ndevs > 0)
            appendstr(buf, "|", buflen);
         appendstr(buf, name, buflen);
         ++ndevs;
      }
      free(name);
      free(ioid);
   }

   snd_device_name_free_hint(hints);
#endif
}