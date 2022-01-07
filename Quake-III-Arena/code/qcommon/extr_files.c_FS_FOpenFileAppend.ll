; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FOpenFileAppend.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FOpenFileAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@qfalse = common dso_local global i8* null, align 8
@fsh = common dso_local global %struct.TYPE_8__* null, align 8
@fs_homepath = common dso_local global %struct.TYPE_9__* null, align 8
@fs_gamedir = common dso_local global i32 0, align 4
@fs_debug = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"FS_FOpenFileAppend: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ab\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_FOpenFileAppend(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @fs_searchpaths, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ERR_FATAL, align 4
  %10 = call i32 @Com_Error(i32 %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = call i64 (...) @FS_HandleForFile()
  store i64 %12, i64* %5, align 8
  %13 = load i8*, i8** @qfalse, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i8* %13, i8** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @Q_strncpyz(i32 %22, i8* %23, i32 4)
  %25 = call i32 (...) @S_ClearSoundBuffer()
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_homepath, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @fs_gamedir, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i8* @FS_BuildOSPath(i32 %28, i32 %29, i8* %30)
  store i8* %31, i8** %4, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_debug, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %11
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %11
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @FS_CreatePath(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i64 0, i64* %2, align 8
  br label %69

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @fopen(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %46, i32* %52, align 8
  %53 = load i8*, i8** @qfalse, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %59 = load i64, i64* %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %44
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %2, align 8
  br label %69

69:                                               ; preds = %67, %43
  %70 = load i64, i64* %2, align 8
  ret i64 %70
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i64 @FS_HandleForFile(...) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @S_ClearSoundBuffer(...) #1

declare dso_local i8* @FS_BuildOSPath(i32, i32, i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i64 @FS_CreatePath(i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
