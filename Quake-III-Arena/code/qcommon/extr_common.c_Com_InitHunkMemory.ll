; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_InitHunkMemory.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_InitHunkMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Hunk initialization failed. File system load stack not zero\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"com_hunkMegs\00", align 1
@DEF_COMHUNKMEGS = common dso_local global i32 0, align 4
@CVAR_LATCH = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@com_dedicated = common dso_local global %struct.TYPE_5__* null, align 8
@MIN_DEDICATED_COMHUNKMEGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"Minimum com_hunkMegs for a dedicated server is %i, allocating %i megs.\0A\00", align 1
@MIN_COMHUNKMEGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Minimum com_hunkMegs is %i, allocating %i megs.\0A\00", align 1
@s_hunkTotal = common dso_local global i32 0, align 4
@s_hunkData = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Hunk data failed to allocate %i megs\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@Com_Meminfo_f = common dso_local global i32 0, align 4
@Hunk_Log = common dso_local global i32 0, align 4
@Hunk_SmallLog = common dso_local global i32 0, align 4
@Z_LogHeap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_InitHunkMemory() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %4 = call i64 (...) @FS_LoadStack()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @ERR_FATAL, align 4
  %8 = call i32 (i32, i8*, ...) @Com_Error(i32 %7, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @DEF_COMHUNKMEGS, align 4
  %11 = load i32, i32* @CVAR_LATCH, align 4
  %12 = load i32, i32* @CVAR_ARCHIVE, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.TYPE_4__* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %1, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_dedicated, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_dedicated, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @MIN_DEDICATED_COMHUNKMEGS, align 4
  store i32 %23, i32* %2, align 4
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %26

24:                                               ; preds = %17, %9
  %25 = load i32, i32* @MIN_COMHUNKMEGS, align 4
  store i32 %25, i32* %2, align 4
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = mul nsw i32 1048576, %33
  store i32 %34, i32* @s_hunkTotal, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @s_hunkTotal, align 4
  %38 = sdiv i32 %37, 1048576
  %39 = call i32 @Com_Printf(i8* %35, i32 %36, i32 %38)
  br label %46

40:                                               ; preds = %26
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 1024
  %45 = mul nsw i32 %44, 1024
  store i32 %45, i32* @s_hunkTotal, align 4
  br label %46

46:                                               ; preds = %40, %32
  %47 = load i32, i32* @s_hunkTotal, align 4
  %48 = add nsw i32 %47, 31
  %49 = call i32* @calloc(i32 %48, i32 1)
  store i32* %49, i32** @s_hunkData, align 8
  %50 = load i32*, i32** @s_hunkData, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ERR_FATAL, align 4
  %54 = load i32, i32* @s_hunkTotal, align 4
  %55 = sdiv i32 %54, 1048576
  %56 = call i32 (i32, i8*, ...) @Com_Error(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32*, i32** @s_hunkData, align 8
  %59 = ptrtoint i32* %58 to i32
  %60 = add nsw i32 %59, 31
  %61 = and i32 %60, -32
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** @s_hunkData, align 8
  %64 = call i32 (...) @Hunk_Clear()
  %65 = load i32, i32* @Com_Meminfo_f, align 4
  %66 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  ret void
}

declare dso_local i64 @FS_LoadStack(...) #1

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @Cvar_Get(i8*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @Hunk_Clear(...) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
