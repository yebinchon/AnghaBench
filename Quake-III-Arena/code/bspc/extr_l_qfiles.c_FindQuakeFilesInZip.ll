; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_FindQuakeFilesInZip.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_qfiles.c_FindQuakeFilesInZip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@UNZ_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @FindQuakeFilesInZip(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @unzOpen(i8* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @unzGetGlobalInfo(i64 %23, %struct.TYPE_9__* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @UNZ_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store i32 1, i32* %16, align 4
  br label %111

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @unzGoToFirstFile(i64 %30)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %14, align 8
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %104, %29
  %33 = load i32, i32* %12, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %107

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %18 to i32
  %40 = call i32 @unzGetCurrentFileInfo(i64 %38, %struct.TYPE_10__* %11, i8* %20, i32 %39, i32* null, i32 0, i32* null, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @UNZ_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %107

45:                                               ; preds = %37
  %46 = call i32 @ConvertPath(i8* %20)
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @FileFilter(i8* %47, i8* %20, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %101

50:                                               ; preds = %45
  %51 = call %struct.TYPE_11__* @malloc(i32 48)
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %15, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %58 = call i32 @memset(%struct.TYPE_11__* %57, i32 0, i32 48)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strcpy(i32 %61, i8* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @strcpy(i32 %66, i8* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcpy(i32 %71, i8* %20)
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 5
  %77 = load i64, i64* %6, align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @memcpy(i32* %76, i32* %78, i32 4)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = call i32 @QuakeFileType(i8* %20)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %92 = icmp ne %struct.TYPE_11__* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %56
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %96, align 8
  br label %99

97:                                               ; preds = %56
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %13, align 8
  br label %99

99:                                               ; preds = %97, %93
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %14, align 8
  br label %101

101:                                              ; preds = %99, %45
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @unzGoToNextFile(i64 %102)
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %32

107:                                              ; preds = %44, %32
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @unzClose(i64 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %3, align 8
  store i32 1, i32* %16, align 4
  br label %111

111:                                              ; preds = %107, %28
  %112 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unzOpen(i8*) #2

declare dso_local i32 @unzGetGlobalInfo(i64, %struct.TYPE_9__*) #2

declare dso_local i32 @unzGoToFirstFile(i64) #2

declare dso_local i32 @unzGetCurrentFileInfo(i64, %struct.TYPE_10__*, i8*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @ConvertPath(i8*) #2

declare dso_local i64 @FileFilter(i8*, i8*, i32) #2

declare dso_local %struct.TYPE_11__* @malloc(i32) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @QuakeFileType(i8*) #2

declare dso_local i32 @unzGoToNextFile(i64) #2

declare dso_local i32 @unzClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
