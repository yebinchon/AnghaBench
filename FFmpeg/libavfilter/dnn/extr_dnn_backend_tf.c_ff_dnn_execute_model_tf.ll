; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_ff_dnn_execute_model_tf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_ff_dnn_execute_model_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i64, i32**, i32, i32, i32, i32, i32 }

@DNN_ERROR = common dso_local global i32 0, align 4
@TF_OK = common dso_local global i64 0, align 8
@DNN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dnn_execute_model_tf(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @FFMIN(i64 %16, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @DNN_ERROR, align 4
  store i32 %24, i32* %4, align 4
  br label %154

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = call i32 @av_assert0(i32** %28)
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %58, %25
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @TF_DeleteTensor(i32* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %44, %36
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %10, align 8
  br label %30

61:                                               ; preds = %30
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @TF_SessionRun(i32 %64, i32* null, i32* %66, i32* %68, i32 1, i32 %71, i32** %74, i64 %75, i32* null, i32 0, i32* null, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @TF_GetCode(i32 %82)
  %84 = load i64, i64* @TF_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %61
  %87 = load i32, i32* @DNN_ERROR, align 4
  store i32 %87, i32* %4, align 4
  br label %154

88:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  br label %89

89:                                               ; preds = %149, %88
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %152

93:                                               ; preds = %89
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds i32*, i32** %96, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = call i8* @TF_Dim(i32* %99, i32 1)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  store i8* %100, i8** %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = call i8* @TF_Dim(i32* %110, i32 2)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  store i8* %111, i8** %115, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = call i8* @TF_Dim(i32* %121, i32 3)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  store i8* %122, i8** %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i32*, i32** %129, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @TF_TensorData(i32* %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @TF_TensorType(i32* %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 8
  br label %149

149:                                              ; preds = %93
  %150 = load i64, i64* %11, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %11, align 8
  br label %89

152:                                              ; preds = %89
  %153 = load i32, i32* @DNN_SUCCESS, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %86, %23
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i64 @FFMIN(i64, i64) #1

declare dso_local i32 @av_assert0(i32**) #1

declare dso_local i32 @TF_DeleteTensor(i32*) #1

declare dso_local i32 @TF_SessionRun(i32, i32*, i32*, i32*, i32, i32, i32**, i64, i32*, i32, i32*, i32) #1

declare dso_local i64 @TF_GetCode(i32) #1

declare dso_local i8* @TF_Dim(i32*, i32) #1

declare dso_local i32 @TF_TensorData(i32*) #1

declare dso_local i32 @TF_TensorType(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
