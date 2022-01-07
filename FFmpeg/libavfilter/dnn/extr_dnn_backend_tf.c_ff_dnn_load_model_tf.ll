; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_ff_dnn_load_model_tf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_ff_dnn_load_model_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i8* }

@DNN_SUCCESS = common dso_local global i64 0, align 8
@set_input_output_tf = common dso_local global i32 0, align 4
@get_input_tf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @ff_dnn_load_model_tf(i8* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %5, align 8
  %6 = call %struct.TYPE_9__* @av_malloc(i32 24)
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %42

10:                                               ; preds = %1
  %11 = call %struct.TYPE_9__* @av_mallocz(i32 24)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call i32 @av_freep(%struct.TYPE_9__** %4)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %42

16:                                               ; preds = %10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @load_tf_model(%struct.TYPE_9__* %17, i8* %18)
  %20 = load i64, i64* @DNN_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @load_native_model(%struct.TYPE_9__* %23, i8* %24)
  %26 = load i64, i64* @DNN_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = call i32 @av_freep(%struct.TYPE_9__** %5)
  %30 = call i32 @av_freep(%struct.TYPE_9__** %4)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %42

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = bitcast %struct.TYPE_9__* %33 to i8*
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32* @set_input_output_tf, i32** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32* @get_input_tf, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %2, align 8
  br label %42

42:                                               ; preds = %32, %28, %14, %9
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %43
}

declare dso_local %struct.TYPE_9__* @av_malloc(i32) #1

declare dso_local %struct.TYPE_9__* @av_mallocz(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_9__**) #1

declare dso_local i64 @load_tf_model(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @load_native_model(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
