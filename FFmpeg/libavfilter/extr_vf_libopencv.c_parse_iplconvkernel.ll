; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_libopencv.c_parse_iplconvkernel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_libopencv.c_parse_iplconvkernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.parse_iplconvkernel.shape_str = private unnamed_addr constant [32 x i8] c"rect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@CV_SHAPE_RECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%dx%d+%dx%d/%32[^=]=%127s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rect\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cross\00", align 1
@CV_SHAPE_CROSS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"ellipse\00", align 1
@CV_SHAPE_ELLIPSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@CV_SHAPE_CUSTOM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Shape unspecified or type '%s' unknown.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Invalid non-positive values for shape size %dx%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Shape anchor %dx%d is not inside the rectangle with size %dx%d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"Structuring element: w:%d h:%d x:%d y:%d shape:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*)* @parse_iplconvkernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_iplconvkernel(i32** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = bitcast [128 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 128, i1 false)
  %18 = bitcast [32 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.parse_iplconvkernel.shape_str, i32 0, i32 0), i64 32, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @CV_SHAPE_RECT, align 4
  store i32 %19, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %23 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11, i32* %12, i32* %13, i8* %21, i8* %22)
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @CV_SHAPE_RECT, align 4
  store i32 %28, i32* %14, align 4
  br label %64

29:                                               ; preds = %3
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @CV_SHAPE_CROSS, align 4
  store i32 %34, i32* %14, align 4
  br label %63

35:                                               ; preds = %29
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @CV_SHAPE_ELLIPSE, align 4
  store i32 %40, i32* %14, align 4
  br label %62

41:                                               ; preds = %35
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @CV_SHAPE_CUSTOM, align 4
  store i32 %46, i32* %14, align 4
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @read_shape_from_file(i32* %10, i32* %11, i32** %15, i8* %47, i8* %48)
  store i32 %49, i32* %16, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %4, align 4
  br label %129

53:                                               ; preds = %45
  br label %61

54:                                               ; preds = %41
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %58 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %55, i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %16, align 4
  br label %126

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %11, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %71, i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %16, align 4
  br label %126

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88, %84, %81, %78
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %93, i32 %94, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %16, align 4
  br label %126

102:                                              ; preds = %88
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = call i32* @cvCreateStructuringElementEx(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32* %108)
  %110 = load i32**, i32*** %5, align 8
  store i32* %109, i32** %110, align 8
  %111 = load i32**, i32*** %5, align 8
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %102
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = call i32 @AVERROR(i32 %115)
  store i32 %116, i32* %16, align 4
  br label %126

117:                                              ; preds = %102
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %125 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %118, i32 %119, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %120, i32 %121, i32 %122, i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %117, %114, %92, %70, %54
  %127 = call i32 @av_freep(i32** %15)
  %128 = load i32, i32* %16, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %51
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @read_shape_from_file(i32*, i32*, i32**, i8*, i8*) #2

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32* @cvCreateStructuringElementEx(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @av_freep(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
