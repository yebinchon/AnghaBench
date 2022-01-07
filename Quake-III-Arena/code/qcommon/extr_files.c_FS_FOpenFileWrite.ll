; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FOpenFileWrite.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_FOpenFileWrite.c"
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
@.str.1 = private unnamed_addr constant [23 x i8] c"FS_FOpenFileWrite: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_FOpenFileWrite(i8* %0) #0 {
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
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_homepath, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @fs_gamedir, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @FS_BuildOSPath(i32 %20, i32 %21, i8* %22)
  store i8* %23, i8** %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_debug, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @Com_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %11
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @FS_CreatePath(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 0, i64* %2, align 8
  br label %68

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @fopen(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %38, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @Q_strncpyz(i32 %49, i8* %50, i32 4)
  %52 = load i8*, i8** @qfalse, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %36
  store i64 0, i64* %5, align 8
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %66, %35
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i64 @FS_HandleForFile(...) #1

declare dso_local i8* @FS_BuildOSPath(i32, i32, i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i64 @FS_CreatePath(i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
