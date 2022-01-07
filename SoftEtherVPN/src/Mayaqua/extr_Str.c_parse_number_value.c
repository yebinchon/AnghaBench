
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int JSON_VALUE ;


 int * JsonNewNumber (int ) ;
 int Json_ToInt64Ex (char*,char**,int*) ;

__attribute__((used)) static JSON_VALUE * parse_number_value(char **string) {
 char *end;
 bool error = 0;
 UINT64 number = 0;
 number = Json_ToInt64Ex(*string, &end, &error);

 if (error)
 {
  return ((void*)0);
 }
 *string = end;
 return JsonNewNumber(number);
}
