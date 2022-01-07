
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;
typedef int List ;
typedef int Datum ;
typedef int ArrayType ;


 size_t ArrayObjectCount (int *) ;
 int Assert (int) ;
 int * DeconstructArrayObject (int *) ;
 int * NIL ;
 char* TextDatumGetCString (int ) ;
 int * lappend (int *,char*) ;

__attribute__((used)) static List *
ArrayObjectToCStringList(ArrayType *arrayObject)
{
 List *cstringList = NIL;
 Datum *datumArray = DeconstructArrayObject(arrayObject);
 int32 arraySize = ArrayObjectCount(arrayObject);

 int32 arrayIndex = 0;
 for (arrayIndex = 0; arrayIndex < arraySize; arrayIndex++)
 {
  Datum datum = datumArray[arrayIndex];
  char *cstring = TextDatumGetCString(datum);

  cstringList = lappend(cstringList, cstring);
 }

 Assert(cstringList != NIL);
 return cstringList;
}
