
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* Printf ) (int ,char*,int,int) ;} ;
typedef TYPE_1__ refimport_t ;
struct TYPE_8__ {int inPVS; int GetEntityToken; int RemapShader; int RegisterFont; int UploadCinematic; int DrawStretchRaw; int DrawStretchPic; int SetColor; int RenderScene; int AddAdditiveLightToScene; int AddLightToScene; int LightForPoint; int AddPolyToScene; int AddRefEntityToScene; int ClearScene; int ModelBounds; int LerpTag; int MarkFragments; int EndFrame; int BeginFrame; int EndRegistration; int SetWorldVisData; int LoadWorld; int RegisterShaderNoMip; int RegisterShader; int RegisterSkin; int RegisterModel; int BeginRegistration; int Shutdown; } ;
typedef TYPE_2__ refexport_t ;
typedef int re ;


 int Com_Memset (TYPE_2__*,int ,int) ;
 int PRINT_ALL ;
 int REF_API_VERSION ;
 int RE_AddAdditiveLightToScene ;
 int RE_AddLightToScene ;
 int RE_AddPolyToScene ;
 int RE_AddRefEntityToScene ;
 int RE_BeginFrame ;
 int RE_BeginRegistration ;
 int RE_ClearScene ;
 int RE_EndFrame ;
 int RE_EndRegistration ;
 int RE_LoadWorldMap ;
 int RE_RegisterFont ;
 int RE_RegisterModel ;
 int RE_RegisterShader ;
 int RE_RegisterShaderNoMip ;
 int RE_RegisterSkin ;
 int RE_RenderScene ;
 int RE_SetColor ;
 int RE_SetWorldVisData ;
 int RE_Shutdown ;
 int RE_StretchPic ;
 int RE_StretchRaw ;
 int RE_UploadCinematic ;
 int R_GetEntityToken ;
 int R_LerpTag ;
 int R_LightForPoint ;
 int R_MarkFragments ;
 int R_ModelBounds ;
 int R_RemapShader ;
 int R_inPVS ;
 TYPE_1__ ri ;
 int stub1 (int ,char*,int,int) ;

refexport_t *GetRefAPI ( int apiVersion, refimport_t *rimp ) {
 static refexport_t re;

 ri = *rimp;

 Com_Memset( &re, 0, sizeof( re ) );

 if ( apiVersion != REF_API_VERSION ) {
  ri.Printf(PRINT_ALL, "Mismatched REF_API_VERSION: expected %i, got %i\n",
   REF_API_VERSION, apiVersion );
  return ((void*)0);
 }



 re.Shutdown = RE_Shutdown;

 re.BeginRegistration = RE_BeginRegistration;
 re.RegisterModel = RE_RegisterModel;
 re.RegisterSkin = RE_RegisterSkin;
 re.RegisterShader = RE_RegisterShader;
 re.RegisterShaderNoMip = RE_RegisterShaderNoMip;
 re.LoadWorld = RE_LoadWorldMap;
 re.SetWorldVisData = RE_SetWorldVisData;
 re.EndRegistration = RE_EndRegistration;

 re.BeginFrame = RE_BeginFrame;
 re.EndFrame = RE_EndFrame;

 re.MarkFragments = R_MarkFragments;
 re.LerpTag = R_LerpTag;
 re.ModelBounds = R_ModelBounds;

 re.ClearScene = RE_ClearScene;
 re.AddRefEntityToScene = RE_AddRefEntityToScene;
 re.AddPolyToScene = RE_AddPolyToScene;
 re.LightForPoint = R_LightForPoint;
 re.AddLightToScene = RE_AddLightToScene;
 re.AddAdditiveLightToScene = RE_AddAdditiveLightToScene;
 re.RenderScene = RE_RenderScene;

 re.SetColor = RE_SetColor;
 re.DrawStretchPic = RE_StretchPic;
 re.DrawStretchRaw = RE_StretchRaw;
 re.UploadCinematic = RE_UploadCinematic;

 re.RegisterFont = RE_RegisterFont;
 re.RemapShader = R_RemapShader;
 re.GetEntityToken = R_GetEntityToken;
 re.inPVS = R_inPVS;

 return &re;
}
