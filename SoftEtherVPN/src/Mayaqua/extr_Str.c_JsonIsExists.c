
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JSON_OBJECT ;


 int * JsonGet (int *,char*) ;

int JsonIsExists(JSON_OBJECT *object, char *name) {
 return JsonGet(object, name) != ((void*)0);
}
