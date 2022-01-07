; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c_ccv_nnc_graph_exec_add_as_affected.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_graph.c_ccv_nnc_graph_exec_add_as_affected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i64, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_graph_exec_add_as_affected(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_11__* %5 to { i64, %struct.TYPE_10__* }*
  %12 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %11, i32 0, i32 1
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %3, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @CCV_IS_TENSOR_MULTIVIEW(i32* %14)
  %16 = call i32 @assert(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = icmp eq %struct.TYPE_10__* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @ccv_array_get(%struct.TYPE_13__* %35, i64 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %8, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = icmp ne i32** %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @ccrealloc(i32** %60, i32 %66)
  %68 = inttoptr i64 %67 to i32**
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i32** %68, i32*** %70, align 8
  br label %82

71:                                               ; preds = %4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call i64 @ccmalloc(i32 %77)
  %79 = inttoptr i64 %78 to i32**
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  store i32** %79, i32*** %81, align 8
  br label %82

82:                                               ; preds = %71, %57
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  store i32* %83, i32** %89, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = call i32 @_ccv_nnc_graph_redo_tensor_wraps(%struct.TYPE_12__* %90, %struct.TYPE_10__* %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %82
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @ccv_nnc_graph_register_tensor_wraps(%struct.TYPE_10__* %96, i64 %100)
  br label %102

102:                                              ; preds = %95, %82
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_IS_TENSOR_MULTIVIEW(i32*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @ccrealloc(i32**, i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @_ccv_nnc_graph_redo_tensor_wraps(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @ccv_nnc_graph_register_tensor_wraps(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
