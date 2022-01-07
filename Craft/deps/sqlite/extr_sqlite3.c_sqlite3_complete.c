
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IdChar (char const) ;
 int sqlite3StrNICmp (char const*,char*,int) ;
 int tkCREATE ;
 int tkEND ;
 int tkEXPLAIN ;
 int tkOTHER ;
 int tkSEMI ;
 int tkTEMP ;
 int tkTRIGGER ;
 int tkWS ;

int sqlite3_complete(const char *zSql){
  u8 state = 0;
  u8 token;





  static const u8 trans[8][8] = {


                      { 1, 0, 2, 3, 4, 2, 2, 2, },
                      { 1, 1, 2, 3, 4, 2, 2, 2, },
                      { 1, 2, 2, 2, 2, 2, 2, 2, },
                      { 1, 3, 3, 2, 4, 2, 2, 2, },
                      { 1, 4, 2, 2, 2, 4, 5, 2, },
                      { 6, 5, 5, 5, 5, 5, 5, 5, },
                      { 6, 6, 5, 5, 5, 5, 5, 7, },
                      { 1, 7, 5, 5, 5, 5, 5, 5, },
  };
  while( *zSql ){
    switch( *zSql ){
      case ';': {
        token = tkSEMI;
        break;
      }
      case ' ':
      case '\r':
      case '\t':
      case '\n':
      case '\f': {
        token = tkWS;
        break;
      }
      case '/': {
        if( zSql[1]!='*' ){
          token = tkOTHER;
          break;
        }
        zSql += 2;
        while( zSql[0] && (zSql[0]!='*' || zSql[1]!='/') ){ zSql++; }
        if( zSql[0]==0 ) return 0;
        zSql++;
        token = tkWS;
        break;
      }
      case '-': {
        if( zSql[1]!='-' ){
          token = tkOTHER;
          break;
        }
        while( *zSql && *zSql!='\n' ){ zSql++; }
        if( *zSql==0 ) return state==1;
        token = tkWS;
        break;
      }
      case '[': {
        zSql++;
        while( *zSql && *zSql!=']' ){ zSql++; }
        if( *zSql==0 ) return 0;
        token = tkOTHER;
        break;
      }
      case '`':
      case '"':
      case '\'': {
        int c = *zSql;
        zSql++;
        while( *zSql && *zSql!=c ){ zSql++; }
        if( *zSql==0 ) return 0;
        token = tkOTHER;
        break;
      }
      default: {



        if( IdChar((u8)*zSql) ){

          int nId;
          for(nId=1; IdChar(zSql[nId]); nId++){}



          switch( *zSql ){
            case 'c': case 'C': {
              if( nId==6 && sqlite3StrNICmp(zSql, "create", 6)==0 ){
                token = tkCREATE;
              }else{
                token = tkOTHER;
              }
              break;
            }
            case 't': case 'T': {
              if( nId==7 && sqlite3StrNICmp(zSql, "trigger", 7)==0 ){
                token = tkTRIGGER;
              }else if( nId==4 && sqlite3StrNICmp(zSql, "temp", 4)==0 ){
                token = tkTEMP;
              }else if( nId==9 && sqlite3StrNICmp(zSql, "temporary", 9)==0 ){
                token = tkTEMP;
              }else{
                token = tkOTHER;
              }
              break;
            }
            case 'e': case 'E': {
              if( nId==3 && sqlite3StrNICmp(zSql, "end", 3)==0 ){
                token = tkEND;
              }else

              if( nId==7 && sqlite3StrNICmp(zSql, "explain", 7)==0 ){
                token = tkEXPLAIN;
              }else

              {
                token = tkOTHER;
              }
              break;
            }
            default: {
              token = tkOTHER;
              break;
            }
          }

          zSql += nId-1;
        }else{

          token = tkOTHER;
        }
        break;
      }
    }
    state = trans[state][token];
    zSql++;
  }
  return state==1;
}
