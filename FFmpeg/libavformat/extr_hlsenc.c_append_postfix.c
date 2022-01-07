
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int extension ;


 char* POSTFIX_PATTERN ;
 int av_strlcat (char*,char*,int) ;
 int av_strlcpy (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int append_postfix(char *name, int name_buf_len, int i)
{
    char *p;
    char extension[10] = {'\0'};

    p = strrchr(name, '.');
    if (p) {
        av_strlcpy(extension, p, sizeof(extension));
        *p = '\0';
    }

    snprintf(name + strlen(name), name_buf_len - strlen(name), POSTFIX_PATTERN, i);

    if (strlen(extension))
        av_strlcat(name, extension, name_buf_len);

    return 0;
}
