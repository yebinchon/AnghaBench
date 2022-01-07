; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_unsharp.c_init_filter_param.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_unsharp.c_init_filter_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { double, i32, i32, i32, i32, i8**, i8* }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"blur\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sharpen\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid even size for %s matrix size %dx%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"effect:%s type:%s msize_x:%d msize_y:%d amount:%0.2f\0A\00", align 1
@MAX_MATRIX_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_7__*, i8*, i32)* @init_filter_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_filter_param(%struct.TYPE_9__* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %28

21:                                               ; preds = %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = fcmp olt double %24, 0.000000e+00
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  br label %28

28:                                               ; preds = %21, %20
  %29 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %20 ], [ %27, %21 ]
  store i8* %29, i8** %12, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.TYPE_9__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_9__* %40, i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %42, i32 %45, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %136

52:                                               ; preds = %28
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fdiv double %65, 6.553500e+04
  %67 = call i32 (%struct.TYPE_9__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_9__* %53, i32 %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56, i32 %59, i32 %62, double %66)
  %68 = load i32, i32* @MAX_MATRIX_SIZE, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = call i8* @av_malloc_array(i32 %73, i32 4)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 2, %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = call i8* @av_malloc_array(i32 %84, i32 8)
  %86 = bitcast i8* %85 to i8**
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  store i8** %86, i8*** %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 6
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %52
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 5
  %96 = load i8**, i8*** %95, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93, %52
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %5, align 4
  br label %136

101:                                              ; preds = %93
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %132, %101
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 2, %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = icmp slt i32 %103, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %102
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 2, %117
  %119 = add nsw i32 %114, %118
  %120 = call i8* @av_malloc_array(i32 %119, i32 1)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 5
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %120, i8** %126, align 8
  %127 = icmp ne i8* %120, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %113
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = call i32 @AVERROR(i32 %129)
  store i32 %130, i32* %5, align 4
  br label %136

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %102

135:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %128, %98, %39
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
