; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_graph_exec_symbol_concat.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_graph_exec_symbol_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_nnc_graph_exec_symbol_concat(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_10__* %2, i64 %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.TYPE_11__* %7 to { i64, %struct.TYPE_10__* }*
  %13 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %12, i32 0, i32 1
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %14, align 8
  %15 = bitcast %struct.TYPE_11__* %8 to { i64, %struct.TYPE_10__* }*
  %16 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %15, i32 0, i32 0
  store i64 %3, i64* %16, align 8
  %17 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %15, i32 0, i32 1
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp eq %struct.TYPE_10__* %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp eq %struct.TYPE_10__* %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %31, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %41, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @ccv_array_get(%struct.TYPE_13__* %52, i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %10, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %5
  %63 = call %struct.TYPE_13__* @ccv_array_new(i32 4, i32 1, i32 0)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %65, align 8
  br label %94

66:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %69, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %67
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @ccv_array_get(%struct.TYPE_13__* %79, i32 %80)
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  store i32 -1, i32* %6, align 4
  br label %101

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %67

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %93, %62
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %99 = bitcast i64* %98 to i32*
  %100 = call i32 @ccv_array_push(%struct.TYPE_13__* %97, i32* %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %94, %88
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_13__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
