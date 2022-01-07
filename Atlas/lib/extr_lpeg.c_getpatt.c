
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int Cclose ;
 int Cruntime ;
 int IChar ;
 int IChoice ;
 int ICloseRunTime ;
 int IFail ;
 int IFailTwice ;
 int IOpenCapture ;
 int ITestAny ;





 int UCHAR_MAX ;
 int * any (int *,int,int,int*) ;
 int * checkpattern (int *,int) ;
 int * fix_l (int *,int) ;
 int lua_replace (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_tointeger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 int * newpatt (int *,int) ;
 int pattsize (int *,int) ;
 int setinst (int *,int ,int ) ;
 int setinstaux (int *,int ,int,int) ;
 int setinstcap (int *,int ,int ,int ,int ) ;
 int value2fenv (int *,int) ;

__attribute__((used)) static Instruction *getpatt (lua_State *L, int idx, int *size) {
  Instruction *p;
  switch (lua_type(L, idx)) {
    case 129: {
      size_t i, len;
      const char *s = lua_tolstring(L, idx, &len);
      p = newpatt(L, len);
      for (i = 0; i < len; i++)
        setinstaux(p + i, IChar, 0, (unsigned char)s[i]);
      lua_replace(L, idx);
      break;
    }
    case 130: {
      int n = lua_tointeger(L, idx);
      if (n == 0)
        p = newpatt(L, 0);
      else if (n > 0)
        p = any(L, n, 0, ((void*)0));
      else if (-n <= UCHAR_MAX) {
        p = newpatt(L, 2);
        setinstaux(p, ITestAny, 2, -n);
        setinst(p + 1, IFail, 0);
      }
      else {
        int offset = 2;
        p = any(L, -n - UCHAR_MAX, 3, &offset);
        setinstaux(p, ITestAny, offset + 1, UCHAR_MAX);
        setinstaux(p + 1, IChoice, offset, UCHAR_MAX);
        setinst(p + offset, IFailTwice, 0);
      }
      lua_replace(L, idx);
      break;
    }
    case 132: {
      if (lua_toboolean(L, idx))
        p = newpatt(L, 0);
      else {
        p = newpatt(L, 1);
        setinst(p, IFail, 0);
      }
      lua_replace(L, idx);
      break;
    }
    case 128: {
      p = fix_l(L, idx);
      break;
    }
    case 131: {
      p = newpatt(L, 2);
      setinstcap(p, IOpenCapture, value2fenv(L, idx), Cruntime, 0);
      setinstcap(p + 1, ICloseRunTime, 0, Cclose, 0);
      lua_replace(L, idx);
      break;
    }
    default: {
      p = checkpattern(L, idx);
      break;
    }
  }
  if (size) *size = pattsize(L, idx);
  return p;
}
