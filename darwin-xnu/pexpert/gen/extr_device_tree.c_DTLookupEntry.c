
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * RealDTEntry ;
typedef scalar_t__* DTEntryNameBuf ;
typedef int * DTEntry ;


 int DTInitialized ;
 int * DTRootNode ;
 int * FindChild (int *,scalar_t__*) ;
 char* GetNextComponent (char const*,scalar_t__*) ;
 char const kDTPathNameSeparator ;
 int kError ;
 int kSuccess ;

int
DTLookupEntry(const DTEntry searchPoint, const char *pathName, DTEntry *foundEntry)
{
 DTEntryNameBuf buf;
 RealDTEntry cur;
 const char * cp;

 if (!DTInitialized) {
  return kError;
 }
 if (searchPoint == ((void*)0)) {
  cur = DTRootNode;
 } else {
  cur = searchPoint;
 }
 cp = pathName;
 if (*cp == kDTPathNameSeparator) {
  cp++;
  if (*cp == 0) {
   *foundEntry = cur;
   return kSuccess;
  }
 }
 do {
  cp = GetNextComponent(cp, buf);


  if (*buf == 0) {
   if (*cp == 0) {
    *foundEntry = cur;
    return kSuccess;
   }
   break;
  }

  cur = FindChild(cur, buf);

 } while (cur != ((void*)0));

 return kError;
}
