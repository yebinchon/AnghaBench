; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_backward.c__ccv_nnc_symbolic_graph_add_init_zeros.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_backward.c__ccv_nnc_symbolic_graph_add_init_zeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_24__*, i32, %struct.TYPE_30__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@CCV_NNC_TENSOR_SYMBOL_INIT_ZEROS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_25__*, i32, %struct.TYPE_28__*, %struct.TYPE_28__*, i32*)* @_ccv_nnc_symbolic_graph_add_init_zeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_symbolic_graph_add_init_zeros(%struct.TYPE_29__* %0, %struct.TYPE_25__* %1, i32 %2, %struct.TYPE_28__* %3, %struct.TYPE_28__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca %struct.TYPE_25__, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %7, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %128, %6
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %131

26:                                               ; preds = %22
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %128

36:                                               ; preds = %26
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %14, align 4
  br label %58

48:                                               ; preds = %36
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  br label %58

58:                                               ; preds = %48, %46
  %59 = phi i32 [ %47, %46 ], [ %57, %48 ]
  store i32 %59, i32* %15, align 4
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i64 %64
  store %struct.TYPE_30__* %65, %struct.TYPE_30__** %16, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %67 = call i32 @_ccv_nnc_tensor_ref_version_find_init(%struct.TYPE_30__* %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %127

70:                                               ; preds = %58
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i64 @ccv_array_get(i32 %73, i32 %74)
  %76 = inttoptr i64 %75 to %struct.TYPE_27__*
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %18, align 4
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call i64 @ccv_array_get(i32 %81, i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %84, %struct.TYPE_31__** %19, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ccv_array_get(i32 %87, i32 %91)
  %93 = inttoptr i64 %92 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %93, %struct.TYPE_26__** %20, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %126, label %98

98:                                               ; preds = %70
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ccv_nnc_tensor_symbol_new(%struct.TYPE_28__* %99, i32 %107, i32 0)
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %111 = load i32, i32* @CCV_NNC_TENSOR_SYMBOL_INIT_ZEROS, align 4
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ccv_nnc_tensor_symbol_set_flags(%struct.TYPE_28__* %110, i32 %113, i32 %111)
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @ccv_array_push(i32* %115, %struct.TYPE_25__* %21)
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ccv_nnc_tensor_symbol_hookup(%struct.TYPE_28__* %117, %struct.TYPE_28__* %118, i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %98, %70
  br label %127

127:                                              ; preds = %126, %58
  br label %128

128:                                              ; preds = %127, %35
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %22

131:                                              ; preds = %22
  ret void
}

declare dso_local i32 @_ccv_nnc_tensor_ref_version_find_init(%struct.TYPE_30__*) #1

declare dso_local i64 @ccv_array_get(i32, i32) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_new(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_set_flags(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @ccv_array_push(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_hookup(%struct.TYPE_28__*, %struct.TYPE_28__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
