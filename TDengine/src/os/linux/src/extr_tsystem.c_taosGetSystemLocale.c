
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cfgStatus; } ;
typedef TYPE_1__ SGlobalConfig ;


 int LC_CTYPE ;
 scalar_t__ TSDB_CFG_CSTATUS_DEFAULT ;
 int free (char*) ;
 int pError (char*) ;
 int pPrint (char*,int ) ;
 char* setlocale (int ,char*) ;
 int strncpy (int ,char*,int ) ;
 char* strrchr (int ,char) ;
 int tListLen (int ) ;
 char* taosCharsetReplace (char*) ;
 int tsCharset ;
 TYPE_1__* tsGetConfigOption (char*) ;
 int tsLocale ;

void taosGetSystemLocale() {
  char sep = '.';
  char *locale = ((void*)0);

  SGlobalConfig *cfg_locale = tsGetConfigOption("locale");
  if (cfg_locale && cfg_locale->cfgStatus < TSDB_CFG_CSTATUS_DEFAULT) {
    locale = setlocale(LC_CTYPE, "");
    if (locale == ((void*)0)) {
      pError("can't get locale from system");
    } else {
      strncpy(tsLocale, locale, tListLen(tsLocale));
      pPrint("locale not configured, set to system default:%s", tsLocale);
    }
  }


  SGlobalConfig *cfg_charset = tsGetConfigOption("charset");
  if (cfg_charset && cfg_charset->cfgStatus < TSDB_CFG_CSTATUS_DEFAULT) {
    char *str = strrchr(tsLocale, sep);
    if (str != ((void*)0)) {
      str++;

      char *revisedCharset = taosCharsetReplace(str);
      strncpy(tsCharset, revisedCharset, tListLen(tsCharset));

      free(revisedCharset);
      pPrint("charset not configured, set to system default:%s", tsCharset);
    }
  }
}
