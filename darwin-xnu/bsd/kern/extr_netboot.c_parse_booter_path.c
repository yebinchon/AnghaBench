
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int inet_aton (char*,struct in_addr*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static __inline__ boolean_t
parse_booter_path(char * path, struct in_addr * iaddr_p, char const * * host,
    char * * mount_dir, char * * image_path)
{
    char * start;
    char * colon;


    start = path;
    colon = strchr(start, ':');
    if (colon == ((void*)0)) {
 return (FALSE);
    }
    *colon = '\0';
    if (inet_aton(start, iaddr_p) != 1) {
 return (FALSE);
    }


    start = colon + 1;
    colon = strchr(start, ':');
    if (colon == ((void*)0)) {
 return (FALSE);
    }
    *colon = '\0';
    *host = start;


    start = colon + 1;
    colon = strchr(start, ':');
    *mount_dir = start;
    if (colon == ((void*)0)) {
 *image_path = ((void*)0);
    }
    else {

 *colon = '\0';
 start = colon + 1;
 *image_path = start;
    }
    return (TRUE);
}
