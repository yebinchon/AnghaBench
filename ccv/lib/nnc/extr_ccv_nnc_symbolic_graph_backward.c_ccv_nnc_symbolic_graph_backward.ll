; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_backward.c_ccv_nnc_symbolic_graph_backward.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_backward.c_ccv_nnc_symbolic_graph_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__*, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_backward(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i32 %2, %struct.TYPE_19__* %3, i32 %4, i32* %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %23

23:                                               ; preds = %55, %9
  %24 = load i32, i32* %19, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %29 = load i32, i32* %19, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %35 = icmp eq %struct.TYPE_21__* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %42 = load i32, i32* %19, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @ccv_array_get(%struct.TYPE_22__* %40, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_20__*
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %27
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %19, align 4
  br label %23

58:                                               ; preds = %23
  store i32 0, i32* %19, align 4
  br label %59

59:                                               ; preds = %91, %58
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %71 = icmp eq %struct.TYPE_21__* %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @ccv_array_get(%struct.TYPE_22__* %76, i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_20__*
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  br label %91

91:                                               ; preds = %63
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  br label %59

94:                                               ; preds = %59
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %20, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %20, align 4
  %106 = icmp sgt i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32, i32* %21, align 4
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @_ccv_nnc_symbolic_graph_backward_prep(%struct.TYPE_21__* %113, i32* %114, i32 %115, i32* %116, i32 %117)
  store i32 %118, i32* %22, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @_ccv_nnc_symbolic_graph_backward_prep_prune_ops(i32* %22, %struct.TYPE_19__* %119, i32 %120, %struct.TYPE_19__* %121, i32 %122, i32* %123, i32 %124, i32* %125, i32 %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32*, i32** %15, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load i32*, i32** %17, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @_ccv_nnc_symbolic_graph_backward_prep_gen(i32* %22, %struct.TYPE_19__* %128, i32 %129, %struct.TYPE_19__* %130, i32 %131, i32 0, i32* %132, i32 %133, i32* %134, i32 %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %143 = call i32 @_ccv_nnc_symbolic_graph_backward_gen(i32* %22, %struct.TYPE_19__* %137, i32 %138, %struct.TYPE_19__* %139, i32 %140, %struct.TYPE_21__* %141, %struct.TYPE_21__* %142)
  %144 = load i32, i32* %22, align 4
  %145 = call i32 @_ccv_nnc_symbolic_graph_backward_prep_free(i32 %144)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_backward_prep(%struct.TYPE_21__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_backward_prep_prune_ops(i32*, %struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_backward_prep_gen(i32*, %struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_backward_gen(i32*, %struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @_ccv_nnc_symbolic_graph_backward_prep_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
