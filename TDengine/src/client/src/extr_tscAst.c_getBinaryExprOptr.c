
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ SSQLToken ;
 int TSDB_BINARY_OP_ADD ;
 int TSDB_BINARY_OP_DIVIDE ;
 int TSDB_BINARY_OP_MULTIPLY ;
 int TSDB_BINARY_OP_REMAINDER ;
 int TSDB_BINARY_OP_SUBTRACT ;
 int TSDB_RELATION_AND ;
 int TSDB_RELATION_EQUAL ;
 int TSDB_RELATION_LARGE ;
 int TSDB_RELATION_LARGE_EQUAL ;
 int TSDB_RELATION_LESS ;
 int TSDB_RELATION_LESS_EQUAL ;
 int TSDB_RELATION_LIKE ;
 int TSDB_RELATION_NOT_EQUAL ;
 int TSDB_RELATION_OR ;

__attribute__((used)) static uint8_t getBinaryExprOptr(SSQLToken *pToken) {
  switch (pToken->type) {
    case 135:
      return TSDB_RELATION_LESS;
    case 137:
      return TSDB_RELATION_LESS_EQUAL;
    case 138:
      return TSDB_RELATION_LARGE;
    case 139:
      return TSDB_RELATION_LARGE_EQUAL;
    case 133:
      return TSDB_RELATION_NOT_EQUAL;
    case 141:
      return TSDB_RELATION_AND;
    case 132:
      return TSDB_RELATION_OR;
    case 140:
      return TSDB_RELATION_EQUAL;
    case 131:
      return TSDB_BINARY_OP_ADD;
    case 134:
      return TSDB_BINARY_OP_SUBTRACT;
    case 128:
      return TSDB_BINARY_OP_MULTIPLY;
    case 129:
      return TSDB_BINARY_OP_DIVIDE;
    case 130:
      return TSDB_BINARY_OP_REMAINDER;
    case 136:
      return TSDB_RELATION_LIKE;
    default: { return 0; }
  }
}
