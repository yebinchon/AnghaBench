
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int * HMODULE ;
typedef int * CFTypeRef ;
typedef int CFStringRef ;
typedef int CFArrayRef ;


 int CFArrayGetCount (int ) ;
 scalar_t__ CFArrayGetTypeID () ;
 int * CFArrayGetValueAtIndex (int ,int) ;
 scalar_t__ CFGetTypeID (int *) ;
 int * CFPreferencesCopyAppValue (int ,int ) ;
 int CFSTR (char*) ;
 scalar_t__ CFStringGetCString (int ,char*,int,int ) ;
 scalar_t__ CFStringGetTypeID () ;
 int * GetModuleHandle (char*) ;
 char* _nl_language_preferences_win32_95 () ;
 char* _nl_language_preferences_win32_ME (int *) ;
 char* _nl_language_preferences_win32_mui (int *) ;
 char* _nl_language_preferences_win32_system (int *) ;
 int _nl_locale_name_canonicalize (char*) ;
 int * getenv (char*) ;
 int kCFPreferencesCurrentApplication ;
 int kCFStringEncodingASCII ;
 scalar_t__ malloc (size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

const char *
_nl_language_preferences_default (void)
{
  return ((void*)0);
}
