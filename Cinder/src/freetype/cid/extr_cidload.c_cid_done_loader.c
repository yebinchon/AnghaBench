
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parser; } ;
typedef int CID_Parser ;
typedef TYPE_1__ CID_Loader ;


 int cid_parser_done (int *) ;

__attribute__((used)) static void
  cid_done_loader( CID_Loader* loader )
  {
    CID_Parser* parser = &loader->parser;



    cid_parser_done( parser );
  }
