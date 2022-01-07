; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_case_of.c_ccv_nnc_symbolic_graph_case_of_new.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_case_of.c_ccv_nnc_symbolic_graph_case_of_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@CCV_NNC_GRAPH_FORWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_BACKWARD = common dso_local global i64 0, align 8
@CCV_NNC_GRAPH_EXEC_CASE_OF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_nnc_symbolic_graph_case_of_new(%struct.TYPE_17__* %0, i64 %1, i32* %2, i32 %3, %struct.TYPE_16__* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_18__, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @CCV_NNC_GRAPH_FORWARD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @CCV_NNC_GRAPH_BACKWARD, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %7
  %29 = phi i1 [ true, %7 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %14, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %16, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %17, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %48

48:                                               ; preds = %72, %28
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %42, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %18, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %19, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %19, align 4
  br label %48

75:                                               ; preds = %48
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %94, %75
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sub nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %42, i64 %92
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %19, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %19, align 4
  br label %77

97:                                               ; preds = %77
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 (...) @CMD_GENERIC()
  %101 = call i32 @ccv_nnc_cmd(i64 %99, i32 0, i32 %100, i32 0)
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = call i32 @ccv_nnc_graph_exec_symbol_new(%struct.TYPE_17__* %98, i32 %101, i32* %42, i32 %104, i32* %105, i32 %106, i8* %107)
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @ccv_nnc_tensor_symbol_set_bypasses(%struct.TYPE_17__* %110, %struct.TYPE_16__* %111, i32 %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @ccv_array_get(i32 %116, i32 %118)
  %120 = inttoptr i64 %119 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %120, %struct.TYPE_19__** %20, align 8
  %121 = load i32, i32* @CCV_NNC_GRAPH_EXEC_CASE_OF, align 4
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  store i32 %131, i32* %135, align 4
  %136 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  ret i32 %138
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ccv_nnc_graph_exec_symbol_new(%struct.TYPE_17__*, i32, i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @ccv_nnc_cmd(i64, i32, i32, i32) #1

declare dso_local i32 @CMD_GENERIC(...) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_set_bypasses(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @ccv_array_get(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
