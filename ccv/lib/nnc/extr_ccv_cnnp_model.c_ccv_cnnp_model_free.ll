; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model.c_ccv_cnnp_model_free.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model.c_ccv_cnnp_model_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, i64, i64, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_cnnp_model_free(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 7
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %8, align 8
  %10 = icmp ne i32 (%struct.TYPE_10__*)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 7
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = call i32 %16(%struct.TYPE_10__* %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %71

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %25
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @ccv_array_get(%struct.TYPE_11__* %36, i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_10__**
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %4, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = icmp ne %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = call i32 @ccv_array_free(%struct.TYPE_11__* %48)
  br label %50

50:                                               ; preds = %45, %33
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = icmp ne %struct.TYPE_11__* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = call i32 @ccv_array_free(%struct.TYPE_11__* %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = call i32 @ccfree(%struct.TYPE_10__* %61)
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = call i32 @ccv_array_free(%struct.TYPE_11__* %69)
  br label %71

71:                                               ; preds = %66, %19
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = icmp ne %struct.TYPE_10__* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 @ccfree(%struct.TYPE_10__* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ccv_nnc_symbolic_graph_free(i64 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @_ccv_cnnp_compiled_data_free(i64 %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = call i32 @ccfree(%struct.TYPE_10__* %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = call i32 @ccfree(%struct.TYPE_10__* %112)
  ret void
}

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_11__*) #1

declare dso_local i32 @ccfree(%struct.TYPE_10__*) #1

declare dso_local i32 @ccv_nnc_symbolic_graph_free(i64) #1

declare dso_local i32 @_ccv_cnnp_compiled_data_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
