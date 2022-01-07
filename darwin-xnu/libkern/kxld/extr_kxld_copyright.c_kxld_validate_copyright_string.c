
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int const_strlen (int ) ;
 int dates_are_valid (char*,int) ;
 int kCopyrightToken ;
 int kRightsToken ;
 char* kxld_alloc (int) ;
 int kxld_free (char*,int) ;
 char* kxld_strstr (char const*,int ) ;
 int strncpy (char*,char const*,int) ;

boolean_t
kxld_validate_copyright_string(const char *str)
{
    boolean_t result = FALSE;
    const char *copyright = ((void*)0);
    const char *rights = ((void*)0);
    char *date_str = ((void*)0);
    u_long len = 0;

    copyright = kxld_strstr(str, kCopyrightToken);
    rights = kxld_strstr(str, kRightsToken);

    if (!copyright || !rights || copyright > rights) goto finish;

    str = copyright + const_strlen(kCopyrightToken);

    len = rights - str;
    date_str = kxld_alloc(len+1);
    if (!date_str) goto finish;

    strncpy(date_str, str, len);
    date_str[len] = '\0';

    if (!dates_are_valid(date_str, len)) goto finish;

    result = TRUE;
finish:
    if (date_str) kxld_free(date_str, len+1);
    return result;
}
