; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c_ccv_nnc_tensor_from_symbol.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph_compile.c_ccv_nnc_tensor_from_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_12__**, %struct.TYPE_10__** }
%struct.TYPE_11__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @ccv_nnc_tensor_from_symbol(%struct.TYPE_12__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = bitcast %struct.TYPE_11__* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i1 [ false, %20 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %37, i64 %39
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %7, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %73

44:                                               ; preds = %31
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_10__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %8, align 8
  br label %50

50:                                               ; preds = %68, %48
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = call i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_10__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  br label %68

63:                                               ; preds = %54
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = call i64* @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_10__* %64)
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i64 [ %62, %59 ], [ %67, %63 ]
  %70 = inttoptr i64 %69 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %8, align 8
  br label %50

71:                                               ; preds = %50
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %4, align 8
  br label %115

73:                                               ; preds = %44, %31
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %4, align 8
  br label %115

75:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %111, %75
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %85, i64 %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = icmp ne %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %82
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %94, i64 %96
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = bitcast %struct.TYPE_11__* %5 to { i64, i64 }*
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %99, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.TYPE_10__* @ccv_nnc_tensor_from_symbol(%struct.TYPE_12__* %98, i64 %101, i64 %103)
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %10, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %4, align 8
  br label %115

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %82
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %76

114:                                              ; preds = %76
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %115

115:                                              ; preds = %114, %107, %73, %71
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %116
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CCV_IS_TENSOR_MULTIVIEW(%struct.TYPE_10__*) #1

declare dso_local i64* @CCV_NNC_MULTIVIEW_DATA(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
