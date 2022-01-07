; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_SV_Rename.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_SV_Rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@fs_searchpaths = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Filesystem call made without initialization\0A\00", align 1
@fs_homepath = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fs_debug = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"FS_SV_Rename: %s --> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FS_SV_Rename(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @fs_searchpaths, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ERR_FATAL, align 4
  %11 = call i32 @Com_Error(i32 %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = call i32 (...) @S_ClearSoundBuffer()
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs_homepath, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @FS_BuildOSPath(i32 %16, i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fs_homepath, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @FS_BuildOSPath(i32 %21, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fs_debug, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %12
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %12
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @rename(i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @FS_CopyFile(i8* %50, i8* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @FS_Remove(i8* %53)
  br label %55

55:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @S_ClearSoundBuffer(...) #1

declare dso_local i8* @FS_BuildOSPath(i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*, i8*) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @FS_CopyFile(i8*, i8*) #1

declare dso_local i32 @FS_Remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
