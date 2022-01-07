
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC608SUB ;
 int IMPORTSRT ;
 int IMPORTSSA ;
 int PGSSUB ;
 int SSASUB ;
 int TX3GSUB ;
 int UTF8SUB ;
 int VOBSUB ;

int hb_subtitle_can_burn( int source )
{
    return source == VOBSUB || source == PGSSUB || source == SSASUB ||
           source == CC608SUB || source == UTF8SUB || source == TX3GSUB ||
           source == IMPORTSRT || source == IMPORTSSA;
}
