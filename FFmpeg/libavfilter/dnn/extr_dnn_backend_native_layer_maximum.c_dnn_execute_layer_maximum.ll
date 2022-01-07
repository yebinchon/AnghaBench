; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_maximum.c_dnn_execute_layer_maximum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_maximum.c_dnn_execute_layer_maximum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, i32, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@DNN_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnn_execute_layer_maximum(%struct.TYPE_8__* %0, i64* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %21
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %24
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %11, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %12, align 8
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %45, %4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %55 = call i32 @calculate_operand_data_length(%struct.TYPE_8__* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load float*, float** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call float* @av_realloc(float* %60, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store float* %64, float** %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load float*, float** %68, align 8
  %70 = icmp ne float* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %48
  %72 = load i32, i32* @DNN_ERROR, align 4
  store i32 %72, i32* %5, align 4
  br label %105

73:                                               ; preds = %48
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = call i32 @calculate_operand_dims_count(%struct.TYPE_8__* %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load float*, float** %77, align 8
  store float* %78, float** %14, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load float*, float** %80, align 8
  store float* %81, float** %15, align 8
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %101, %73
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load float*, float** %14, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call float @FFMAX(float %91, i32 %95)
  %97 = load float*, float** %15, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float %96, float* %100, align 4
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  br label %82

104:                                              ; preds = %82
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %71
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @calculate_operand_data_length(%struct.TYPE_8__*) #1

declare dso_local float* @av_realloc(float*, i32) #1

declare dso_local i32 @calculate_operand_dims_count(%struct.TYPE_8__*) #1

declare dso_local float @FFMAX(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
