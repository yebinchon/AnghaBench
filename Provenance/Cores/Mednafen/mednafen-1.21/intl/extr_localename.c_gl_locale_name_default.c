
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namebuf ;
typedef int LCID ;
typedef int * CFTypeRef ;
typedef int CFStringRef ;
typedef int CFLocaleRef ;


 scalar_t__ CFGetTypeID (int *) ;
 int CFLocaleCopyCurrent () ;
 int CFLocaleGetIdentifier (int ) ;
 int * CFPreferencesCopyAppValue (int ,int ) ;
 int CFRelease (int ) ;
 int CFSTR (char*) ;
 scalar_t__ CFStringGetCString (int ,char*,int,int ) ;
 scalar_t__ CFStringGetTypeID () ;
 int GetThreadLocale () ;
 int gl_locale_name_canonicalize (char*) ;
 char const* gl_locale_name_from_win32_LCID (int ) ;
 int kCFPreferencesCurrentApplication ;
 int kCFStringEncodingASCII ;
 char* strdup (char*) ;

const char *
gl_locale_name_default (void)
{
  return "C";
}
