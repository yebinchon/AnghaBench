; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_while.c_ccv_nnc_graph_while.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph_while.c_ccv_nnc_graph_while.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_14__*, %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@CCV_NNC_GRAPH_FORWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_BACKWARD = common dso_local global i64 0, align 8
@ccv_nnc_no_hint = common dso_local global i32 0, align 4
@CCV_NNC_GRAPH_EXEC_P_WHILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_nnc_graph_while(%struct.TYPE_14__* %0, i64 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_15__, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @CCV_NNC_GRAPH_FORWARD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @CCV_NNC_GRAPH_BACKWARD, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 (...) @CMD_GENERIC()
  %24 = call i32 @ccv_nnc_cmd(i64 %22, i32 0, i32 %23, i32 0)
  %25 = load i32, i32* @ccv_nnc_no_hint, align 4
  %26 = call i32 @ccv_nnc_graph_exec_new(%struct.TYPE_14__* %21, i32 %24, i32 %25, i32 0, i32 0, i32 0, i32 0)
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_14__** @ccv_array_get(%struct.TYPE_17__* %30, i32 %32)
  %34 = bitcast %struct.TYPE_14__** %33 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %8, align 8
  %35 = load i32, i32* @CCV_NNC_GRAPH_EXEC_P_WHILE, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = icmp ne %struct.TYPE_17__* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %17
  %45 = call i8* @ccv_array_new(i32 8, i32 1, i32 0)
  %46 = bitcast i8* %45 to %struct.TYPE_17__*
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %48, align 8
  br label %49

49:                                               ; preds = %44, %17
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = icmp ne %struct.TYPE_17__* %52, null
  br i1 %53, label %54, label %92

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @ccv_array_new(i32 4, i32 %64, i32 0)
  %66 = bitcast i8* %65 to %struct.TYPE_17__*
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %68, align 8
  br label %69

69:                                               ; preds = %59, %54
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call %struct.TYPE_14__** @ccv_array_get(%struct.TYPE_17__* %84, i32 %85)
  %87 = call i32 @ccv_array_push(%struct.TYPE_17__* %81, %struct.TYPE_14__** %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %70

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91, %49
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = call i32 @ccv_array_push(%struct.TYPE_17__* %95, %struct.TYPE_14__** %7)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 3
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = call i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_16__* %119)
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %118, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  ret i32 %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_nnc_graph_exec_new(%struct.TYPE_14__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_nnc_cmd(i64, i32, i32, i32) #1

declare dso_local i32 @CMD_GENERIC(...) #1

declare dso_local %struct.TYPE_14__** @ccv_array_get(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_17__*, %struct.TYPE_14__**) #1

declare dso_local i32* @CCV_NNC_GRAPH_REF(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
