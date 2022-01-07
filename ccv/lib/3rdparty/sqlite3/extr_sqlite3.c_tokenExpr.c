
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_11__ {int n; int z; } ;
typedef TYPE_2__ Token ;
struct TYPE_10__ {char* zToken; } ;
struct TYPE_13__ {int iAgg; int nHeight; TYPE_1__ u; int flags; scalar_t__ op; } ;
struct TYPE_12__ {int db; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Expr ;


 int EP_DblQuoted ;
 int EP_Leaf ;
 int memcpy (char*,int ,int) ;
 int memset (TYPE_4__*,int ,int) ;
 TYPE_4__* sqlite3DbMallocRawNN (int ,int) ;
 int sqlite3Dequote (char*) ;
 scalar_t__ sqlite3Isquote (char) ;

__attribute__((used)) static Expr *tokenExpr(Parse *pParse, int op, Token t){
    Expr *p = sqlite3DbMallocRawNN(pParse->db, sizeof(Expr)+t.n+1);
    if( p ){
      memset(p, 0, sizeof(Expr));
      p->op = (u8)op;
      p->flags = EP_Leaf;
      p->iAgg = -1;
      p->u.zToken = (char*)&p[1];
      memcpy(p->u.zToken, t.z, t.n);
      p->u.zToken[t.n] = 0;
      if( sqlite3Isquote(p->u.zToken[0]) ){
        if( p->u.zToken[0]=='"' ) p->flags |= EP_DblQuoted;
        sqlite3Dequote(p->u.zToken);
      }



    }
    return p;
  }
