; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_ParseDirectory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_ParseDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.dirent = type { i8*, i64 }

@fileDir = common dso_local global i32 0, align 4
@MAXFILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".wav\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".ogg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@filelist = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@FileSortCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseDirectory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @fileDir, align 4
  %6 = call i32* @opendir(i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %110

10:                                               ; preds = %0
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.dirent* @readdir(i32* %11)
  store %struct.dirent* %12, %struct.dirent** %4, align 8
  br label %13

13:                                               ; preds = %99, %10
  %14 = load %struct.dirent*, %struct.dirent** %4, align 8
  %15 = icmp ne %struct.dirent* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @MAXFILES, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %102

22:                                               ; preds = %20
  %23 = load %struct.dirent*, %struct.dirent** %4, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 46
  br i1 %29, label %30, label %99

30:                                               ; preds = %22
  %31 = load %struct.dirent*, %struct.dirent** %4, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.dirent*, %struct.dirent** %4, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = sub nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %33, i64 %39
  %41 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %30
  %44 = load %struct.dirent*, %struct.dirent** %4, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.dirent*, %struct.dirent** %4, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sub nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %46, i64 %52
  %54 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %99

56:                                               ; preds = %43
  %57 = load %struct.dirent*, %struct.dirent** %4, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.dirent*, %struct.dirent** %4, align 8
  %61 = getelementptr inbounds %struct.dirent, %struct.dirent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = sub nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %59, i64 %65
  %67 = call i64 @strncasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 4)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %56
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @filelist, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = call i32 @memset(%struct.TYPE_4__* %73, i32 0, i32 4)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @filelist, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dirent*, %struct.dirent** %4, align 8
  %82 = getelementptr inbounds %struct.dirent, %struct.dirent* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @sprintf(i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load %struct.dirent*, %struct.dirent** %4, align 8
  %86 = getelementptr inbounds %struct.dirent, %struct.dirent* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DT_DIR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %69
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @filelist, align 8
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %69
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %56, %43, %30, %22
  %100 = load i32*, i32** %3, align 8
  %101 = call %struct.dirent* @readdir(i32* %100)
  store %struct.dirent* %101, %struct.dirent** %4, align 8
  br label %13

102:                                              ; preds = %20
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @closedir(i32* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @filelist, align 8
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @FileSortCallback, align 4
  %108 = call i32 @qsort(%struct.TYPE_4__* %105, i32 %106, i32 4, i32 %107)
  %109 = load i32, i32* %2, align 4
  store i32 %109, i32* %1, align 4
  br label %110

110:                                              ; preds = %102, %9
  %111 = load i32, i32* %1, align 4
  ret i32 %111
}

declare dso_local i32* @opendir(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
