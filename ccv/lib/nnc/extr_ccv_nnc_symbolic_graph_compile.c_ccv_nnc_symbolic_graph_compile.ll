; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c_ccv_nnc_symbolic_graph_compile.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c_ccv_nnc_symbolic_graph_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_compile(i32* %0, %struct.TYPE_16__* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8, i32** %9, i32** %10, i32** %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32**, align 8
  %23 = alloca i32**, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_17__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32* %5, i32** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32** %9, i32*** %22, align 8
  store i32** %10, i32*** %23, align 8
  store i32** %11, i32*** %24, align 8
  %29 = load i32**, i32*** %22, align 8
  %30 = ptrtoint i32** %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32**, i32*** %23, align 8
  %33 = ptrtoint i32** %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32**, i32*** %24, align 8
  %36 = ptrtoint i32** %35 to i32
  %37 = call i32 @assert(i32 %36)
  store i32 0, i32* %25, align 4
  br label %38

38:                                               ; preds = %61, %12
  %39 = load i32, i32* %25, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %44 = load i32, i32* %25, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %51 = load i32, i32* %25, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CCV_IS_TENSOR_MULTIVIEW(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  br label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %25, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %25, align 4
  br label %38

64:                                               ; preds = %38
  %65 = load i32*, i32** %13, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32*, i32** %18, align 8
  %71 = load i32, i32* %19, align 4
  %72 = load i32*, i32** %20, align 8
  %73 = load i32, i32* %21, align 4
  %74 = call %struct.TYPE_17__* @_ccv_nnc_symbolic_graph_prep_new(i32* %65, %struct.TYPE_16__* %66, i32 %67, i32* %68, i32 %69, i32* %70, i32 %71, i32* %72, i32 %73, i32 0, i32 0, i32 0, i32 0)
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %26, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %76 = call i32 @_ccv_nnc_symbolic_graph_prep_while_count_tensor(%struct.TYPE_17__* %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32* @_ccv_nnc_tensor_arena_new(%struct.TYPE_17__* %77, i32 0, %struct.TYPE_16__* %78, i32 %79)
  store i32* %80, i32** %27, align 8
  %81 = load i32*, i32** %27, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %83 = load i32*, i32** %27, align 8
  %84 = call i32 @_ccv_nnc_tensor_arena_fixup_pair_ref_and_tape_var(i32* %81, %struct.TYPE_17__* %82, i32* %83)
  %85 = load i32*, i32** %27, align 8
  %86 = load i32**, i32*** %23, align 8
  store i32* %85, i32** %86, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %89 = call i32 @_ccv_nnc_graph_fixup_pair(%struct.TYPE_17__* %87, %struct.TYPE_17__* %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %91 = call i32 @_ccv_nnc_symbolic_graph_prep_dup_breakpoints_free(%struct.TYPE_17__* %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32**, i32*** %22, align 8
  store i32* %94, i32** %95, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load i32*, i32** %20, align 8
  %100 = load i32, i32* %21, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %102 = load i32*, i32** %27, align 8
  %103 = call i32* @_ccv_nnc_graph_exec_arena_new(i32* %96, i32* %97, i32 %98, i32* %99, i32 %100, %struct.TYPE_17__* %101, i32* %102)
  store i32* %103, i32** %28, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** %28, align 8
  %108 = call i32 @_ccv_nnc_graph_exec_arena_topsort(i32* %106, i32* %107)
  %109 = load i32*, i32** %28, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %111 = load i32*, i32** %28, align 8
  %112 = call i32 @_ccv_nnc_graph_exec_arena_fixup_pair_ref(i32* %109, %struct.TYPE_17__* %110, i32* %111)
  %113 = load i32*, i32** %28, align 8
  %114 = load i32**, i32*** %24, align 8
  store i32* %113, i32** %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %116 = call i32 @_ccv_nnc_symbolic_graph_prep_free(%struct.TYPE_17__* %115)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_IS_TENSOR_MULTIVIEW(i32) #1

declare dso_local %struct.TYPE_17__* @_ccv_nnc_symbolic_graph_prep_new(i32*, %struct.TYPE_16__*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_prep_while_count_tensor(%struct.TYPE_17__*) #1

declare dso_local i32* @_ccv_nnc_tensor_arena_new(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @_ccv_nnc_tensor_arena_fixup_pair_ref_and_tape_var(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_fixup_pair(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_prep_dup_breakpoints_free(%struct.TYPE_17__*) #1

declare dso_local i32* @_ccv_nnc_graph_exec_arena_new(i32*, i32*, i32, i32*, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_exec_arena_topsort(i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_graph_exec_arena_fixup_pair_ref(i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_prep_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
