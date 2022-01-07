; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_InitRef.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_InitRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i8*, i8*)*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (i32, i8*)*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"----- Initializing Renderer ----\0A\00", align 1
@Cmd_AddCommand = common dso_local global i32 0, align 4
@Cmd_RemoveCommand = common dso_local global i32 0, align 4
@Cmd_Argc = common dso_local global i32 0, align 4
@Cmd_Argv = common dso_local global i32 0, align 4
@Cbuf_ExecuteText = common dso_local global i32 0, align 4
@CL_RefPrintf = common dso_local global i32 0, align 4
@CL_ScaledMilliseconds = common dso_local global i32 0, align 4
@CL_RefMalloc = common dso_local global i32 0, align 4
@Z_Free = common dso_local global i32 0, align 4
@Hunk_Alloc = common dso_local global i32 0, align 4
@Hunk_AllocateTempMemory = common dso_local global i32 0, align 4
@Hunk_FreeTempMemory = common dso_local global i32 0, align 4
@CM_DrawDebugSurface = common dso_local global i32 0, align 4
@FS_ReadFile = common dso_local global i32 0, align 4
@FS_FreeFile = common dso_local global i32 0, align 4
@FS_WriteFile = common dso_local global i32 0, align 4
@FS_FreeFileList = common dso_local global i32 0, align 4
@FS_ListFiles = common dso_local global i32 0, align 4
@FS_FileIsInPAK = common dso_local global i32 0, align 4
@FS_FileExists = common dso_local global i32 0, align 4
@Cvar_Get = common dso_local global i32 0, align 4
@CIN_UploadCinematic = common dso_local global i32 0, align 4
@CIN_PlayCinematic = common dso_local global i32 0, align 4
@CIN_RunCinematic = common dso_local global i32 0, align 4
@REF_API_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"-------------------------------\0A\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Couldn't initialize refresh\00", align 1
@re = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"cl_paused\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@Hunk_AllocDebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_InitRef() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @Cmd_AddCommand, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 26
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @Cmd_RemoveCommand, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 25
  store i32 %6, i32* %7, align 8
  %8 = load i32, i32* @Cmd_Argc, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 24
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @Cmd_Argv, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 23
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @Cbuf_ExecuteText, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 22
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @CL_RefPrintf, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 21
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 20
  store i32 (i32, i8*)* @Com_Error, i32 (i32, i8*)** %16, align 8
  %17 = load i32, i32* @CL_ScaledMilliseconds, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 19
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @CL_RefMalloc, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 18
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @Z_Free, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 17
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @Hunk_Alloc, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 15
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @Hunk_AllocateTempMemory, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 14
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @Hunk_FreeTempMemory, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 13
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @CM_DrawDebugSurface, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 12
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @FS_ReadFile, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 11
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @FS_FreeFile, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 10
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @FS_WriteFile, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @FS_FreeFileList, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @FS_ListFiles, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @FS_FileIsInPAK, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @FS_FileExists, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @Cvar_Get, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32 (i8*, i8*)* @Cvar_Set, i32 (i8*, i8*)** %47, align 8
  %48 = load i32, i32* @CIN_UploadCinematic, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @CIN_PlayCinematic, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @CIN_RunCinematic, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* @REF_API_VERSION, align 4
  %55 = call i32* @GetRefAPI(i32 %54, %struct.TYPE_3__* %1)
  store i32* %55, i32** %2, align 8
  %56 = call i32 @Com_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32*, i32** %2, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %0
  %60 = load i32, i32* @ERR_FATAL, align 4
  %61 = call i32 @Com_Error(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %0
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* @re, align 4
  %65 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32* @GetRefAPI(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
