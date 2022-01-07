
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCSM_STATUS_T ;




 int const VCSM_STATUS_HOST_WALK_PID_MAP ;


 int vcsm_status (int const,int) ;

__attribute__((used)) static int get_status( VCSM_STATUS_T mode, int pid )
{
   switch ( mode )
   {
      case 128:
         vcsm_status( 128, -1 );
      break;

      case 131:
         if ( pid != -1 )
         {
            vcsm_status( VCSM_STATUS_HOST_WALK_PID_MAP, pid );
         }
         else
         {
            vcsm_status( 131, -1 );
         }
      break;

      case 130:
         vcsm_status( 130, pid );
      break;

      case 129:
         vcsm_status( 128, -1 );
         vcsm_status( 131, -1 );
      break;

      default:
      break;
   }

   return 0;
}
