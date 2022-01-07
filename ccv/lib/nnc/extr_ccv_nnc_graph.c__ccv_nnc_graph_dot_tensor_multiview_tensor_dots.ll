; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_tensor_multiview_tensor_dots.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c__ccv_nnc_graph_dot_tensor_multiview_tensor_dots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i32*)* @_ccv_nnc_graph_dot_tensor_multiview_tensor_dots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_graph_dot_tensor_multiview_tensor_dots(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %117, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %120

21:                                               ; preds = %17
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call %struct.TYPE_14__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_12__* %22)
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %23, i64 %25
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_14__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call %struct.TYPE_14__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_12__* %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %32, i64 %34
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = bitcast %struct.TYPE_14__* %36 to %struct.TYPE_12__*
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = load i32*, i32** %6, align 8
  call void @_ccv_nnc_graph_dot_tensor_multiview_tensor_dots(%struct.TYPE_12__* %37, %struct.TYPE_13__* %38, i32* %39)
  br label %116

40:                                               ; preds = %21
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = call %struct.TYPE_14__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_12__* %49)
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %50, i64 %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  store i64 %57, i64* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  store i64 %70, i64* %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = call %struct.TYPE_14__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_12__* %77)
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %78, i64 %80
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ccv_nnc_dimension_count(i32 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = call %struct.TYPE_14__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_12__* %87)
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %88, i64 %90
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @CCV_GET_DATA_TYPE_SIZE(i32 %94)
  %96 = mul i64 %86, %95
  store i64 %96, i64* %9, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %103, %104
  %106 = sub i64 %105, 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  store i64 %106, i64* %112, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %40, %30
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %17

120:                                              ; preds = %17
  ret void
}

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__** @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_12__*) #1

declare dso_local i64 @ccv_nnc_dimension_count(i32) #1

declare dso_local i64 @CCV_GET_DATA_TYPE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
