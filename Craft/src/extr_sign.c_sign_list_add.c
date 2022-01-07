
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int z; int face; char* text; } ;
typedef int SignList ;
typedef TYPE_1__ Sign ;


 int MAX_SIGN_LENGTH ;
 int _sign_list_add (int *,TYPE_1__*) ;
 int sign_list_remove (int *,int,int,int,int) ;
 int strncpy (char*,char const*,int) ;

void sign_list_add(
    SignList *list, int x, int y, int z, int face, const char *text)
{
    sign_list_remove(list, x, y, z, face);
    Sign sign;
    sign.x = x;
    sign.y = y;
    sign.z = z;
    sign.face = face;
    strncpy(sign.text, text, MAX_SIGN_LENGTH);
    sign.text[MAX_SIGN_LENGTH - 1] = '\0';
    _sign_list_add(list, &sign);
}
