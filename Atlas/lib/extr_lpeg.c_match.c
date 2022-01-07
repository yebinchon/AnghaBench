
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int lua_State ;
typedef int lua_Integer ;
typedef int byte ;
struct TYPE_22__ {char const* s; int siz; int kind; int idx; } ;
struct TYPE_19__ {int aux; int offset; int code; } ;
struct TYPE_21__ {char* (* f ) (int ,char const*,char const*,char const*) ;TYPE_1__ i; int buff; } ;
struct TYPE_20__ {char const* s; int caplevel; TYPE_3__ const* p; } ;
typedef TYPE_2__ Stack ;
typedef int Opcode ;
typedef TYPE_3__ const Instruction ;
typedef TYPE_4__ Capture ;


 int CHARSETINSTSIZE ;
 int Cclose ;
 int IMAXCAPTURES ;
 int MAXBACK ;
 char const* UCHAR_MAX ;
 int adddyncaptures (char const*,TYPE_4__*,int,int) ;
 int assert (int) ;
 TYPE_3__ const* dest (int ,TYPE_3__ const*) ;
 TYPE_4__* doublecap (int *,TYPE_4__*,int,int) ;
 int getkind (TYPE_3__ const*) ;
 int getoff (TYPE_3__ const*) ;
 TYPE_3__ const giveup ;
 char const* luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_isboolean (int *,int) ;
 int lua_rawgeti (int *,int ,int ) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_tointeger (int *,int) ;
 int penvidx (int) ;
 int printf (char*,char const*,int,int) ;
 int printinst (TYPE_3__ const*,TYPE_3__ const*) ;
 int runtimecap (int *,TYPE_4__*,TYPE_4__*,char const*,char const*,int) ;
 char* stub1 (int ,char const*,char const*,char const*) ;
 int testchar (int ,int) ;
 int val2str (int *,int) ;

__attribute__((used)) static const char *match (lua_State *L,
                          const char *o, const char *s, const char *e,
                          Instruction *op, Capture *capture, int ptop) {
  Stack stackbase[MAXBACK];
  Stack *stacklimit = stackbase + MAXBACK;
  Stack *stack = stackbase;
  int capsize = IMAXCAPTURES;
  int captop = 0;
  const Instruction *p = op;
  stack->p = &giveup; stack->s = s; stack->caplevel = 0; stack++;
  for (;;) {




    switch ((Opcode)p->i.code) {
      case 146: {
        assert(stack == stackbase + 1);
        capture[captop].kind = Cclose;
        capture[captop].s = ((void*)0);
        return s;
      }
      case 141: {
        assert(stack == stackbase);
        return ((void*)0);
      }
      case 136: {
        assert(stack > stackbase && (stack - 1)->s == ((void*)0));
        p = (--stack)->p;
        continue;
      }
      case 156: {
        int n = p->i.aux;
        if (n > e - s) goto fail;
        else { p++; s += n; }
        continue;
      }
      case 132: {
        int n = p->i.aux;
        if (n > e - s) p += p->i.offset;
        else { p++; s += n; }
        continue;
      }
      case 153: {
        if ((byte)*s != p->i.aux || s >= e) goto fail;
        else { p++; s++; }
        continue;
      }
      case 131: {
        if ((byte)*s != p->i.aux || s >= e) p += p->i.offset;
        else { p++; s++; }
        continue;
      }
      case 135: {
        int c = (unsigned char)*s;
        if (!testchar((p+1)->buff, c)) goto fail;
        else { p += CHARSETINSTSIZE; s++; }
        continue;
      }
      case 130: {
        int c = (unsigned char)*s;
        if (!testchar((p+1)->buff, c)) p += p->i.offset;
        else { p += CHARSETINSTSIZE; s++; }
        continue;
      }
      case 128: {
        int c = (unsigned char)*s;
        if (!testchar((p+1)->buff, c) || s >= e) goto fail;
        else { p += CHARSETINSTSIZE; s++; }
        continue;
      }
      case 129: {
        int c = (unsigned char)*s;
        if (!testchar((p+1)->buff, c) || s >= e) p += p->i.offset;
        else { p += CHARSETINSTSIZE; s++; }
        continue;
      }
      case 134: {
        for (;; s++) {
          int c = (unsigned char)*s;
          if (!testchar((p+1)->buff, c)) break;
        }
        p += CHARSETINSTSIZE;
        continue;
      }
      case 133: {
        for (; s < e; s++) {
          int c = (unsigned char)*s;
          if (!testchar((p+1)->buff, c)) break;
        }
        p += CHARSETINSTSIZE;
        continue;
      }
      case 142: {
        const char *r = (p+1)->f((p+2)->buff, o, s, e);
        if (r == ((void*)0)) goto fail;
        s = r;
        p += p->i.offset;
        continue;
      }
      case 140: {
        p += p->i.offset;
        continue;
      }
      case 152: {
        if (stack >= stacklimit)
          return (luaL_error(L, "too many pending calls/choices"), (char *)0);
        stack->p = dest(0, p);
        stack->s = s - p->i.aux;
        stack->caplevel = captop;
        stack++;
        p++;
        continue;
      }
      case 154: {
        if (stack >= stacklimit)
          return (luaL_error(L, "too many pending calls/choices"), (char *)0);
        stack->s = ((void*)0);
        stack->p = p + 1;
        stack++;
        p += p->i.offset;
        continue;
      }
      case 149: {
        assert(stack > stackbase && (stack - 1)->s != ((void*)0));
        stack--;
        p += p->i.offset;
        continue;
      }
      case 137: {
        assert(stack > stackbase && (stack - 1)->s != ((void*)0));
        (stack - 1)->s = s;
        (stack - 1)->caplevel = captop;
        p += p->i.offset;
        continue;
      }
      case 155: {
        assert(stack > stackbase && (stack - 1)->s != ((void*)0));
        s = (--stack)->s;
        p += p->i.offset;
        continue;
      }
      case 144:
        assert(stack > stackbase);
        stack--;

      case 145:
      fail: {
        do {
          assert(stack > stackbase);
          s = (--stack)->s;
        } while (s == ((void*)0));
        captop = stack->caplevel;
        p = stack->p;
        continue;
      }
      case 150: {
        int fr = lua_gettop(L) + 1;
        int ncap = runtimecap(L, capture + captop, capture, o, s, ptop);
        lua_Integer res = lua_tointeger(L, fr) - 1;
        int n = lua_gettop(L) - fr;
        if (res == -1) {
          if (!lua_toboolean(L, fr)) {
            lua_settop(L, fr - 1);
            goto fail;
          }
          else if (lua_isboolean(L, fr))
            res = s - o;
        }
        if (res < s - o || res > e - o)
          luaL_error(L, "invalid position returned by match-time capture");
        s = o + res;
        captop -= ncap;
        lua_remove(L, fr);
        if (n > 0) {
          if ((captop += n + 1) >= capsize) {
            capture = doublecap(L, capture, captop, ptop);
            capsize = 2 * captop;
          }
          adddyncaptures(s, capture + captop - n - 1, n, fr);
        }
        p++;
        continue;
      }
      case 151: {
        const char *s1 = s - getoff(p);
        assert(captop > 0);
        if (capture[captop - 1].siz == 0 &&
            s1 - capture[captop - 1].s < UCHAR_MAX) {
          capture[captop - 1].siz = s1 - capture[captop - 1].s + 1;
          p++;
          continue;
        }
        else {
          capture[captop].siz = 1;
          goto capture;
        }
      }
      case 148: case 147:
        capture[captop].siz = 1;
        goto capture;
      case 138:
        capture[captop].siz = 0;
        goto capture;
      case 143:
        capture[captop].siz = getoff(p) + 1;
      capture: {
        capture[captop].s = s - getoff(p);
        capture[captop].idx = p->i.offset;
        capture[captop].kind = getkind(p);
        if (++captop >= capsize) {
          capture = doublecap(L, capture, captop, ptop);
          capsize = 2 * captop;
        }
        p++;
        continue;
      }
      case 139: {
        lua_rawgeti(L, penvidx(ptop), p->i.offset);
        luaL_error(L, "reference to %s outside a grammar", val2str(L, -1));
      }
      default: assert(0); return ((void*)0);
    }
  }
}
