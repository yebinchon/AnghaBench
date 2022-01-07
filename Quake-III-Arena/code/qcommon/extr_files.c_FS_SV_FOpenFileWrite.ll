; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_SV_FOpenFileWrite.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_SV_FOpenFileWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@fs_homepath = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@qfalse = common dso_local global i8* null, align 8
@fsh = common dso_local global %struct.TYPE_8__* null, align 8
@fs_debug = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"FS_SV_FOpenFileWrite: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"writing to: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FS_SV_FOpenFileWrite(i8* %0) #0 {
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
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_homepath, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @FS_BuildOSPath(i32 %14, i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  store i8 0, i8* %22, align 1
  %23 = call i64 (...) @FS_HandleForFile()
  store i64 %23, i64* %5, align 8
  %24 = load i8*, i8** @qfalse, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i8* %24, i8** %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_debug, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %11
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %11
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @FS_CreatePath(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i64 0, i64* %2, align 8
  br label %75

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @fopen(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @Q_strncpyz(i32 %56, i8* %57, i32 4)
  %59 = load i8*, i8** @qfalse, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i8* %59, i8** %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fsh, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %41
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %2, align 8
  br label %75

75:                                               ; preds = %73, %40
  %76 = load i64, i64* %2, align 8
  ret i64 %76
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i8* @FS_BuildOSPath(i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @FS_HandleForFile(...) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i64 @FS_CreatePath(i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
