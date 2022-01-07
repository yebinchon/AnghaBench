
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_10__ {int const code; int offset; int aux; } ;
struct TYPE_12__ {char* (* f ) (int ,char const*,char const*,char const*) ;TYPE_1__ i; int buff; } ;
struct TYPE_11__ {char const* s; TYPE_3__ const* p; } ;
typedef TYPE_2__ Stack ;
typedef int Opcode ;
typedef TYPE_3__ const Instruction ;
 int MAXBACK ;
 int assert (int) ;
 TYPE_3__ const* dest (int ,TYPE_3__ const*) ;
 int getposition (int *,int,int) ;
 int luaL_error (int *,char*,...) ;
 int sizei (TYPE_3__ const*) ;
 char* stub1 (int ,char const*,char const*,char const*) ;
 int val2str (int *,int) ;

__attribute__((used)) static int verify (lua_State *L, Instruction *op, const Instruction *p,
                   Instruction *e, int postable, int rule) {
  static const char dummy[] = "";
  Stack back[MAXBACK];
  int backtop = 0;
  while (p != e) {
    switch ((Opcode)p->i.code) {
      case 136: {
        p = back[--backtop].p;
        continue;
      }
      case 151: {
        if (backtop >= MAXBACK)
          return luaL_error(L, "too many pending calls/choices");
        back[backtop].p = dest(0, p);
        back[backtop++].s = dummy;
        p++;
        continue;
      }
      case 153: {
        assert((p + 1)->i.code != 136);
        if (backtop >= MAXBACK)
          return luaL_error(L, "too many pending calls/choices");
        back[backtop].s = ((void*)0);
        back[backtop++].p = p + 1;
        goto dojmp;
      }
      case 139: {
        int i;
        if (postable == 0)
          goto fail;
        for (i = 0; i < backtop; i++) {
          if (back[i].s == ((void*)0) && back[i].p == p + 1)
            return luaL_error(L, "%s is left recursive", val2str(L, rule));
        }
        if (backtop >= MAXBACK)
          return luaL_error(L, "too many pending calls/choices");
        back[backtop].s = ((void*)0);
        back[backtop++].p = p + 1;
        p = op + getposition(L, postable, p->i.offset);
        continue;
      }
      case 154:
      case 148: {
        assert(backtop > 0 && p->i.offset > 0);
        backtop--;
        goto dojmp;
      }
      case 137: {
        assert(backtop > 0);
        if (p->i.offset > 0) goto dojmp;
        else {
          assert(postable != 0);
          backtop--;
          p++;
          continue;
        }
      }
      case 132:
      case 131:
      case 130:
      case 129:
      case 140:
      dojmp: {
        p += p->i.offset;
        continue;
      }
      case 155:
      case 152:
      case 135:
      case 128:
      case 143:
        goto fail;
      case 144: {
        if (p->i.aux) {
          assert((p - 1)->i.code == 154 && (p - 1)->i.offset == 2);
          p++;
          continue;
        }

      }
      fail: {
        do {
          if (backtop-- == 0)
            return 1;
        } while (back[backtop].s == ((void*)0));
        p = back[backtop].p;
        continue;
      }
      case 134: case 133:
      case 138: case 150:
      case 147: case 146:
      case 142: {
        p += sizei(p);
        continue;
      }
      case 149: {
        goto fail;
      }
      case 141: {
        const char *r = (p+1)->f((p+2)->buff, dummy, dummy, dummy);
        if (r == ((void*)0)) goto fail;
        p += p->i.offset;
        continue;
      }
      case 145:
      default: assert(0); return 0;
    }
  }
  assert(backtop == 0);
  return 0;
}
