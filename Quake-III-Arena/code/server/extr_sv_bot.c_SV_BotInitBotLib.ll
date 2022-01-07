; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_bot.c_SV_BotInitBotLib.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_bot.c_SV_BotInitBotLib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"fs_restrict\00", align 1
@ERR_NEED_CD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Game CD not in drive\00", align 1
@debugpolygons = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"bot_maxdebugpolys\00", align 1
@bot_maxdebugpolys = common dso_local global i32 0, align 4
@BotImport_Print = common dso_local global i32 0, align 4
@BotImport_Trace = common dso_local global i32 0, align 4
@BotImport_EntityTrace = common dso_local global i32 0, align 4
@BotImport_PointContents = common dso_local global i32 0, align 4
@BotImport_inPVS = common dso_local global i32 0, align 4
@BotImport_BSPEntityData = common dso_local global i32 0, align 4
@BotImport_BSPModelMinsMaxsOrigin = common dso_local global i32 0, align 4
@BotClientCommand = common dso_local global i32 0, align 4
@BotImport_GetMemory = common dso_local global i32 0, align 4
@BotImport_FreeMemory = common dso_local global i32 0, align 4
@Z_AvailableMemory = common dso_local global i32 0, align 4
@BotImport_HunkAlloc = common dso_local global i32 0, align 4
@FS_FOpenFileByMode = common dso_local global i32 0, align 4
@FS_Read2 = common dso_local global i32 0, align 4
@FS_Write = common dso_local global i32 0, align 4
@FS_FCloseFile = common dso_local global i32 0, align 4
@FS_Seek = common dso_local global i32 0, align 4
@BotImport_DebugLineCreate = common dso_local global i32 0, align 4
@BotImport_DebugLineDelete = common dso_local global i32 0, align 4
@BotImport_DebugLineShow = common dso_local global i32 0, align 4
@BotImport_DebugPolygonCreate = common dso_local global i32 0, align 4
@BotImport_DebugPolygonDelete = common dso_local global i32 0, align 4
@BOTLIB_API_VERSION = common dso_local global i32 0, align 4
@botlib_export = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_BotInitBotLib() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @Sys_CheckCD()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @ERR_NEED_CD, align 4
  %9 = call i32 @Com_Error(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %4, %0
  %11 = load i64, i64* @debugpolygons, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @debugpolygons, align 8
  %15 = call i32 @Z_Free(i64 %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i32 @Cvar_VariableIntegerValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %17, i32* @bot_maxdebugpolys, align 4
  %18 = load i32, i32* @bot_maxdebugpolys, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i64 @Z_Malloc(i32 %21)
  store i64 %22, i64* @debugpolygons, align 8
  %23 = load i32, i32* @BotImport_Print, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 21
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @BotImport_Trace, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 20
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @BotImport_EntityTrace, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 19
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @BotImport_PointContents, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 18
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @BotImport_inPVS, align 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 17
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @BotImport_BSPEntityData, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 16
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @BotImport_BSPModelMinsMaxsOrigin, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 15
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @BotClientCommand, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 14
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @BotImport_GetMemory, align 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 13
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @BotImport_FreeMemory, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 12
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @Z_AvailableMemory, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 11
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @BotImport_HunkAlloc, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 10
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @FS_FOpenFileByMode, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 9
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @FS_Read2, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @FS_Write, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @FS_FCloseFile, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @FS_Seek, align 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @BotImport_DebugLineCreate, align 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @BotImport_DebugLineDelete, align 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @BotImport_DebugLineShow, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @BotImport_DebugPolygonCreate, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @BotImport_DebugPolygonDelete, align 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @BOTLIB_API_VERSION, align 4
  %68 = call i64 @GetBotLibAPI(i32 %67, %struct.TYPE_3__* %1)
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** @botlib_export, align 8
  %70 = load i32*, i32** @botlib_export, align 8
  %71 = call i32 @assert(i32* %70)
  ret void
}

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @Sys_CheckCD(...) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Z_Free(i64) #1

declare dso_local i32 @Cvar_VariableIntegerValue(i8*) #1

declare dso_local i64 @Z_Malloc(i32) #1

declare dso_local i64 @GetBotLibAPI(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
