; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_get_input_tf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_get_input_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@DNN_ERROR = common dso_local global i32 0, align 4
@TF_OK = common dso_local global i64 0, align 8
@DNN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_9__*, i8*)* @get_input_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_input_tf(i8* %0, %struct.TYPE_9__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @TF_GraphOperationByName(i32 %16, i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @DNN_ERROR, align 4
  store i32 %24, i32* %4, align 4
  br label %76

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = bitcast %struct.TYPE_7__* %11 to { i64, i32 }*
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %27, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @TF_OperationOutputType(i64 %29, i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = call i32* (...) @TF_NewStatus()
  store i32* %35, i32** %9, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %40 = load i32*, i32** %9, align 8
  %41 = bitcast %struct.TYPE_7__* %11 to { i64, i32 }*
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %41, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @TF_GraphGetTensorShape(i32 %38, i64 %43, i32 %45, i32* %39, i32 4, i32* %40)
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @TF_GetCode(i32* %47)
  %49 = load i64, i64* @TF_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %25
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @TF_DeleteStatus(i32* %52)
  %54 = load i32, i32* @DNN_ERROR, align 4
  store i32 %54, i32* %4, align 4
  br label %76

55:                                               ; preds = %25
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @TF_DeleteStatus(i32* %56)
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i32
  %62 = call i32 @av_assert0(i32 %61)
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @DNN_SUCCESS, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %55, %51, %23
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @TF_GraphOperationByName(i32, i8*) #1

declare dso_local i32 @TF_OperationOutputType(i64, i32) #1

declare dso_local i32* @TF_NewStatus(...) #1

declare dso_local i32 @TF_GraphGetTensorShape(i32, i64, i32, i32*, i32, i32*) #1

declare dso_local i64 @TF_GetCode(i32*) #1

declare dso_local i32 @TF_DeleteStatus(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
