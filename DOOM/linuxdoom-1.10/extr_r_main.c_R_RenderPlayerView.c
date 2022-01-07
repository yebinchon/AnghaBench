
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int player_t ;


 int NetUpdate () ;
 int R_ClearClipSegs () ;
 int R_ClearDrawSegs () ;
 int R_ClearPlanes () ;
 int R_ClearSprites () ;
 int R_DrawMasked () ;
 int R_DrawPlanes () ;
 int R_RenderBSPNode (scalar_t__) ;
 int R_SetupFrame (int *) ;
 scalar_t__ numnodes ;

void R_RenderPlayerView (player_t* player)
{
    R_SetupFrame (player);


    R_ClearClipSegs ();
    R_ClearDrawSegs ();
    R_ClearPlanes ();
    R_ClearSprites ();


    NetUpdate ();


    R_RenderBSPNode (numnodes-1);


    NetUpdate ();

    R_DrawPlanes ();


    NetUpdate ();

    R_DrawMasked ();


    NetUpdate ();
}
