
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int * HRSRC ;
typedef int * HINSTANCE ;
typedef int * HGLOBAL ;
typedef int BUF ;


 int * FindResourceA (int *,char*,char*) ;
 int FreeLibrary (int *) ;
 int FreeResource (int *) ;
 int LOAD_LIBRARY_AS_DATAFILE ;
 int * LoadLibraryExA (char*,int *,int ) ;
 int * LoadResource (int *,int *) ;
 scalar_t__ LockResource (int *) ;
 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;
 int SizeofResource (int *,int *) ;
 int WriteBuf (int *,void*,int ) ;

BUF *ViExtractResource(char *exe, char *type, char *name)
{
 HINSTANCE h;
 HRSRC hr;
 HGLOBAL hg;
 UINT size;
 void *data;
 BUF *buf;

 if (exe == ((void*)0) || type == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 h = LoadLibraryExA(exe, ((void*)0), LOAD_LIBRARY_AS_DATAFILE);
 if (h == ((void*)0))
 {
  return ((void*)0);
 }

 hr = FindResourceA(h, name, type);
 if (hr == ((void*)0))
 {
  FreeLibrary(h);
  return ((void*)0);
 }

 hg = LoadResource(h, hr);
 if (hg == ((void*)0))
 {
  FreeLibrary(h);
  return ((void*)0);
 }

 size = SizeofResource(h, hr);
 data = (void *)LockResource(hg);

 buf = NewBuf();
 WriteBuf(buf, data, size);

 FreeResource(hg);
 FreeLibrary(h);

 SeekBuf(buf, 0, 0);

 return buf;
}
