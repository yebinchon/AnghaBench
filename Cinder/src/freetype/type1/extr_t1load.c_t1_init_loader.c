
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int T1_Loader ;
typedef int T1_Face ;


 int FT_UNUSED (int ) ;
 int FT_ZERO (int ) ;

__attribute__((used)) static void
  t1_init_loader( T1_Loader loader,
                  T1_Face face )
  {
    FT_UNUSED( face );

    FT_ZERO( loader );
  }
