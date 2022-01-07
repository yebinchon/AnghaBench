; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_opencl.c_ff_opencl_filter_load_program.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_opencl.c_ff_opencl_filter_load_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to create program: %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CL_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to build program: %d.\0A\00", align 1
@CL_BUILD_PROGRAM_FAILURE = common dso_local global i64 0, align 8
@CL_PROGRAM_BUILD_LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Build log:\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_opencl_filter_load_program(%struct.TYPE_8__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = call i32* @clCreateProgramWithSource(i32 %19, i32 %20, i8** %21, i32* null, i64* %9)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @av_log(%struct.TYPE_8__* %30, i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %108

37:                                               ; preds = %3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i64 @clBuildProgram(i32* %40, i32 1, i32* %44, i32* null, i32* null, i32* null)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @CL_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %37
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = load i64, i64* %9, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @av_log(%struct.TYPE_8__* %50, i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @CL_BUILD_PROGRAM_FAILURE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %49
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CL_PROGRAM_BUILD_LOG, align 4
  %68 = call i64 @clGetProgramBuildInfo(i32* %61, i32 %66, i32 %67, i64 0, i8* null, i64* %11)
  %69 = load i64, i64* %11, align 8
  %70 = call i8* @av_malloc(i64 %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %95

73:                                               ; preds = %58
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CL_PROGRAM_BUILD_LOG, align 4
  %83 = load i64, i64* %11, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i64 @clGetProgramBuildInfo(i32* %76, i32 %81, i32 %82, i64 %83, i8* %84, i64* null)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @CL_SUCCESS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %73
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = load i32, i32* @AV_LOG_ERROR, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @av_log(%struct.TYPE_8__* %90, i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %89, %73
  br label %95

95:                                               ; preds = %94, %58
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @av_free(i8* %96)
  br label %98

98:                                               ; preds = %95, %49
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @clReleaseProgram(i32* %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* @EIO, align 4
  %106 = call i32 @AVERROR(i32 %105)
  store i32 %106, i32* %4, align 4
  br label %108

107:                                              ; preds = %37
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %98, %29
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32* @clCreateProgramWithSource(i32, i32, i8**, i32*, i64*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @clBuildProgram(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @clGetProgramBuildInfo(i32*, i32, i32, i64, i8*, i64*) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @clReleaseProgram(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
