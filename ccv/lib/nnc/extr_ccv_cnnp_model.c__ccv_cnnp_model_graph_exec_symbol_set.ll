; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model.c__ccv_cnnp_model_graph_exec_symbol_set.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model.c__ccv_cnnp_model_graph_exec_symbol_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32*, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_18__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i64, i32)* @_ccv_cnnp_model_graph_exec_symbol_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_model_graph_exec_symbol_set(%struct.TYPE_19__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_18__, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  store i64 %1, i64* %14, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %7, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = call i32 @assert(%struct.TYPE_17__* %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ccv_max(i32 %22, i32 1)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %9, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = call i32 @assert(%struct.TYPE_17__* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ccv_nnc_graph_exec_symbol_set(%struct.TYPE_17__* %29, i64 %32, i32 %30)
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %55, %3
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ccv_nnc_graph_exec_symbol_copy(%struct.TYPE_17__* %39, i64 %42, i32 %40)
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ccv_nnc_graph_exec_symbol_set(%struct.TYPE_17__* %49, i64 %52, i32 %50)
  br label %54

54:                                               ; preds = %48, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @_ccv_cnnp_model_graph_symbol_exec_set_for_graph_exec_arena(i32* %65, i32 %66, i64 %70, i32 %67, %struct.TYPE_17__* %68)
  br label %72

72:                                               ; preds = %64, %58
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %13, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @_ccv_cnnp_model_graph_symbol_exec_set_for_graph_exec_arena(i32* %80, i32 %81, i64 %85, i32 %82, %struct.TYPE_17__* %83)
  br label %87

87:                                               ; preds = %79, %72
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_17__*) #1

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @ccv_nnc_graph_exec_symbol_set(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i64 @ccv_nnc_graph_exec_symbol_copy(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @_ccv_cnnp_model_graph_symbol_exec_set_for_graph_exec_arena(i32*, i32, i64, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
