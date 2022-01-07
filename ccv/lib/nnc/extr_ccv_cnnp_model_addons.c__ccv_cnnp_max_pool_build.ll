; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_addons.c__ccv_cnnp_max_pool_build.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_addons.c__ccv_cnnp_max_pool_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32*, i32)* @_ccv_cnnp_max_pool_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_max_pool_build(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %13, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64* @ccv_nnc_tensor_symbol_params(i32* %30, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i64* %34, i64** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @ccv_nnc_tensor_nd(i64* %37)
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @ccv_nnc_tensor_hw(i64* %40, i32 %38)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %6
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %44
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @CMD_MAX_POOL_FORWARD(i64 %64, i64 %71)
  store i32 %72, i32* %16, align 4
  br label %85

73:                                               ; preds = %51, %44, %6
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @CMD_MAX_POOL_FORWARD(i64 %78, i64 %83)
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %73, %58
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ccv_nnc_hint_tensor_auto(i32 %86, %struct.TYPE_10__* %14, i32 1, i32 %90, %struct.TYPE_10__* %17, i32 1)
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @ccv_nnc_tensor_symbol_new(i32* %92, i64* %94, i32 0)
  store i32 %95, i32* %18, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @TENSOR_SYMBOL_LIST(i32 %100)
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @TENSOR_SYMBOL_LIST(i32 %102)
  %104 = call i32 @ccv_nnc_graph_exec_symbol_new(i32* %96, i32 %97, i32 %101, i32 %103, i32 0)
  store i32 %104, i32* %19, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %19, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ccv_nnc_graph_exec_symbol_set_hint(i32* %105, i32 %106, i32 %110)
  %112 = load i32, i32* %18, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %112, i32* %114, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64* @ccv_nnc_tensor_symbol_params(i32*, i32) #1

declare dso_local i32 @ccv_nnc_tensor_hw(i64*, i32) #1

declare dso_local i32 @ccv_nnc_tensor_nd(i64*) #1

declare dso_local i32 @CMD_MAX_POOL_FORWARD(i64, i64) #1

declare dso_local i32 @ccv_nnc_hint_tensor_auto(i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_new(i32*, i64*, i32) #1

declare dso_local i32 @ccv_nnc_graph_exec_symbol_new(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @TENSOR_SYMBOL_LIST(i32) #1

declare dso_local i32 @ccv_nnc_graph_exec_symbol_set_hint(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
