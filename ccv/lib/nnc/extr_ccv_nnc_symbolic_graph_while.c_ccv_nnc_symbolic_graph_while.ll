; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_while.c_ccv_nnc_symbolic_graph_while.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_while.c_ccv_nnc_symbolic_graph_while.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }

@CCV_NNC_GRAPH_FORWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_BACKWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_EXEC_P_WHILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ccv_nnc_symbolic_graph_while(%struct.TYPE_13__* %0, i64 %1, %struct.TYPE_13__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @CCV_NNC_GRAPH_FORWARD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @CCV_NNC_GRAPH_BACKWARD, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ true, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = icmp eq %struct.TYPE_13__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 (...) @CMD_GENERIC()
  %37 = call i32 @ccv_nnc_cmd(i64 %35, i32 0, i32 %36, i32 0)
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @ccv_nnc_graph_exec_symbol_new(%struct.TYPE_13__* %34, i32 %37, i32 0, i32 0, i32 0, i32 0, i8* %38)
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = icmp ne %struct.TYPE_16__* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %18
  %46 = call %struct.TYPE_16__* @ccv_array_new(i32 8, i32 1, i32 0)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %48, align 8
  br label %49

49:                                               ; preds = %45, %18
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = call i32 @ccv_array_push(%struct.TYPE_16__* %52, %struct.TYPE_13__** %8)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @ccv_array_get(i32 %56, i64 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %10, align 8
  %61 = load i32, i32* @CCV_NNC_GRAPH_EXEC_P_WHILE, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = call i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_15__* %73)
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  ret i64 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_nnc_graph_exec_symbol_new(%struct.TYPE_13__*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ccv_nnc_cmd(i64, i32, i32, i32) #1

declare dso_local i32 @CMD_GENERIC(...) #1

declare dso_local %struct.TYPE_16__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_16__*, %struct.TYPE_13__**) #1

declare dso_local i64 @ccv_array_get(i32, i64) #1

declare dso_local i64* @CCV_NNC_GRAPH_REF(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
