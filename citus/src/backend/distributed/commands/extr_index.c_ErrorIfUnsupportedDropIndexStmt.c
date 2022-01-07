
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ removeType; int objects; } ;
typedef TYPE_1__ DropStmt ;


 int Assert (int) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ OBJECT_INDEX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int list_length (int ) ;

__attribute__((used)) static void
ErrorIfUnsupportedDropIndexStmt(DropStmt *dropIndexStatement)
{
 Assert(dropIndexStatement->removeType == OBJECT_INDEX);

 if (list_length(dropIndexStatement->objects) > 1)
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot drop multiple distributed objects in a "
          "single command"),
      errhint("Try dropping each object in a separate DROP "
        "command.")));
 }
}
