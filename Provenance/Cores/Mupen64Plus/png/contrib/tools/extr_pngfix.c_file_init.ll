; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_file_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, i8*, i32, void (%struct.file*, i32)*, i8*, i32*, i8*, i32*, i8*, i32*, i32*, i32, i64, %struct.global* }
%struct.global = type { i32 }

@STATE_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i8* null, align 8
@FILE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.global*, i8*, i8*, i8*, void (%struct.file*, i32)*)* @file_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_init(%struct.file* %0, %struct.global* %1, i8* %2, i8* %3, i8* %4, void (%struct.file*, i32)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.global*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca void (%struct.file*, i32)*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.global* %1, %struct.global** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store void (%struct.file*, i32)* %5, void (%struct.file*, i32)** %13, align 8
  %14 = load %struct.file*, %struct.file** %8, align 8
  %15 = call i32 @CLEAR(%struct.file* byval(%struct.file) align 8 %14)
  %16 = load %struct.global*, %struct.global** %9, align 8
  %17 = load %struct.file*, %struct.file** %8, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 13
  store %struct.global* %16, %struct.global** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.file*, %struct.file** %8, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.file*, %struct.file** %8, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.file*, %struct.file** %8, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.file*, %struct.file** %8, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 6
  store i8* null, i8** %28, align 8
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 4
  store i8* null, i8** %30, align 8
  %31 = load %struct.file*, %struct.file** %8, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 7
  store i32* null, i32** %32, align 8
  %33 = load %struct.file*, %struct.file** %8, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.file*, %struct.file** %8, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 12
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @STATE_SIGNATURE, align 4
  %38 = load %struct.file*, %struct.file** %8, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 8
  %40 = load %struct.file*, %struct.file** %8, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 10
  store i32* null, i32** %41, align 8
  %42 = load %struct.file*, %struct.file** %8, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 9
  store i32* null, i32** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.file*, %struct.file** %8, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 8
  store i8* %44, i8** %46, align 8
  %47 = load void (%struct.file*, i32)*, void (%struct.file*, i32)** %13, align 8
  %48 = load %struct.file*, %struct.file** %8, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 3
  store void (%struct.file*, i32)* %47, void (%struct.file*, i32)** %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp ne i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @fopen(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.file*, %struct.file** %8, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 7
  store i32* %56, i32** %58, align 8
  %59 = load %struct.file*, %struct.file** %8, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %6
  %64 = load i8*, i8** @errno, align 8
  %65 = load %struct.file*, %struct.file** %8, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @FILE_ERROR, align 4
  %68 = load %struct.file*, %struct.file** %8, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @perror(i8* %72)
  %74 = load i32, i32* @FILE_ERROR, align 4
  store i32 %74, i32* %7, align 4
  br label %102

75:                                               ; preds = %6
  %76 = load i8*, i8** %11, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load i8*, i8** %11, align 8
  %80 = call i8* @fopen(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.file*, %struct.file** %8, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 5
  store i32* %81, i32** %83, align 8
  %84 = load %struct.file*, %struct.file** %8, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %78
  %89 = load i8*, i8** @errno, align 8
  %90 = load %struct.file*, %struct.file** %8, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @WRITE_ERROR, align 4
  %93 = load %struct.file*, %struct.file** %8, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @perror(i8* %97)
  %99 = load i32, i32* @WRITE_ERROR, align 4
  store i32 %99, i32* %7, align 4
  br label %102

100:                                              ; preds = %78
  br label %101

101:                                              ; preds = %100, %75
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %88, %63
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @CLEAR(%struct.file* byval(%struct.file) align 8) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
