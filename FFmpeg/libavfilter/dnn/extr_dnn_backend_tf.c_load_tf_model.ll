; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_load_tf_model.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_tf.c_load_tf_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@DNN_ERROR = common dso_local global i32 0, align 4
@TF_OK = common dso_local global i64 0, align 8
@DNN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @load_tf_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_tf_model(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @read_graph(i8* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @DNN_ERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %53

14:                                               ; preds = %2
  %15 = call i32 (...) @TF_NewGraph()
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = call i32 (...) @TF_NewStatus()
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = call i32* (...) @TF_NewImportGraphDefOptions()
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @TF_GraphImportGraphDef(i32 %24, i32* %25, i32* %26, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @TF_DeleteImportGraphDefOptions(i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @TF_DeleteBuffer(i32* %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @TF_GetCode(i32 %37)
  %39 = load i64, i64* @TF_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %14
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TF_DeleteGraph(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @TF_DeleteStatus(i32 %48)
  %50 = load i32, i32* @DNN_ERROR, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %14
  %52 = load i32, i32* @DNN_SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %41, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32* @read_graph(i8*) #1

declare dso_local i32 @TF_NewGraph(...) #1

declare dso_local i32 @TF_NewStatus(...) #1

declare dso_local i32* @TF_NewImportGraphDefOptions(...) #1

declare dso_local i32 @TF_GraphImportGraphDef(i32, i32*, i32*, i32) #1

declare dso_local i32 @TF_DeleteImportGraphDefOptions(i32*) #1

declare dso_local i32 @TF_DeleteBuffer(i32*) #1

declare dso_local i64 @TF_GetCode(i32) #1

declare dso_local i32 @TF_DeleteGraph(i32) #1

declare dso_local i32 @TF_DeleteStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
