; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_GetRefAPI.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_init.c_GetRefAPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i32, i32)* }

@GetRefAPI.re = internal global %struct.TYPE_8__ zeroinitializer, align 4
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@REF_API_VERSION = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Mismatched REF_API_VERSION: expected %i, got %i\0A\00", align 1
@RE_Shutdown = common dso_local global i32 0, align 4
@RE_BeginRegistration = common dso_local global i32 0, align 4
@RE_RegisterModel = common dso_local global i32 0, align 4
@RE_RegisterSkin = common dso_local global i32 0, align 4
@RE_RegisterShader = common dso_local global i32 0, align 4
@RE_RegisterShaderNoMip = common dso_local global i32 0, align 4
@RE_LoadWorldMap = common dso_local global i32 0, align 4
@RE_SetWorldVisData = common dso_local global i32 0, align 4
@RE_EndRegistration = common dso_local global i32 0, align 4
@RE_BeginFrame = common dso_local global i32 0, align 4
@RE_EndFrame = common dso_local global i32 0, align 4
@R_MarkFragments = common dso_local global i32 0, align 4
@R_LerpTag = common dso_local global i32 0, align 4
@R_ModelBounds = common dso_local global i32 0, align 4
@RE_ClearScene = common dso_local global i32 0, align 4
@RE_AddRefEntityToScene = common dso_local global i32 0, align 4
@RE_AddPolyToScene = common dso_local global i32 0, align 4
@R_LightForPoint = common dso_local global i32 0, align 4
@RE_AddLightToScene = common dso_local global i32 0, align 4
@RE_AddAdditiveLightToScene = common dso_local global i32 0, align 4
@RE_RenderScene = common dso_local global i32 0, align 4
@RE_SetColor = common dso_local global i32 0, align 4
@RE_StretchPic = common dso_local global i32 0, align 4
@RE_StretchRaw = common dso_local global i32 0, align 4
@RE_UploadCinematic = common dso_local global i32 0, align 4
@RE_RegisterFont = common dso_local global i32 0, align 4
@R_RemapShader = common dso_local global i32 0, align 4
@R_GetEntityToken = common dso_local global i32 0, align 4
@R_inPVS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @GetRefAPI(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_7__* @ri to i8*), i8* align 8 %7, i64 8, i1 false)
  %8 = call i32 @Com_Memset(%struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 116)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @REF_API_VERSION, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %14 = load i32, i32* @PRINT_ALL, align 4
  %15 = load i32, i32* @REF_API_VERSION, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %13(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %48

18:                                               ; preds = %2
  %19 = load i32, i32* @RE_Shutdown, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 28), align 4
  %20 = load i32, i32* @RE_BeginRegistration, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 27), align 4
  %21 = load i32, i32* @RE_RegisterModel, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 26), align 4
  %22 = load i32, i32* @RE_RegisterSkin, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 25), align 4
  %23 = load i32, i32* @RE_RegisterShader, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 24), align 4
  %24 = load i32, i32* @RE_RegisterShaderNoMip, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 23), align 4
  %25 = load i32, i32* @RE_LoadWorldMap, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 22), align 4
  %26 = load i32, i32* @RE_SetWorldVisData, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 21), align 4
  %27 = load i32, i32* @RE_EndRegistration, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 20), align 4
  %28 = load i32, i32* @RE_BeginFrame, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 19), align 4
  %29 = load i32, i32* @RE_EndFrame, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 18), align 4
  %30 = load i32, i32* @R_MarkFragments, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 17), align 4
  %31 = load i32, i32* @R_LerpTag, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 16), align 4
  %32 = load i32, i32* @R_ModelBounds, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 15), align 4
  %33 = load i32, i32* @RE_ClearScene, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 14), align 4
  %34 = load i32, i32* @RE_AddRefEntityToScene, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 13), align 4
  %35 = load i32, i32* @RE_AddPolyToScene, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 12), align 4
  %36 = load i32, i32* @R_LightForPoint, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 11), align 4
  %37 = load i32, i32* @RE_AddLightToScene, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 10), align 4
  %38 = load i32, i32* @RE_AddAdditiveLightToScene, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 9), align 4
  %39 = load i32, i32* @RE_RenderScene, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 8), align 4
  %40 = load i32, i32* @RE_SetColor, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 7), align 4
  %41 = load i32, i32* @RE_StretchPic, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 6), align 4
  %42 = load i32, i32* @RE_StretchRaw, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 5), align 4
  %43 = load i32, i32* @RE_UploadCinematic, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 4), align 4
  %44 = load i32, i32* @RE_RegisterFont, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 3), align 4
  %45 = load i32, i32* @R_RemapShader, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 2), align 4
  %46 = load i32, i32* @R_GetEntityToken, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 1), align 4
  %47 = load i32, i32* @R_inPVS, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @GetRefAPI.re, i32 0, i32 0), align 4
  store %struct.TYPE_8__* @GetRefAPI.re, %struct.TYPE_8__** %3, align 8
  br label %48

48:                                               ; preds = %18, %12
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_8__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
