; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_cost_layer.c_forward_cost_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_cost_layer.c_forward_cost_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32*, i32 }
%struct.TYPE_5__ = type { i64*, i64* }

@MASKED = common dso_local global i64 0, align 8
@SECRET_NUM = common dso_local global i64 0, align 8
@SMOOTH = common dso_local global i64 0, align 8
@L1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_cost_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_5__* %4 to { i64*, i64* }*
  %7 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %6, i32 0, i32 0
  store i64* %1, i64** %7, align 8
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %6, i32 0, i32 1
  store i64* %2, i64** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %116

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MASKED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %22, %24
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SECRET_NUM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i64, i64* @SECRET_NUM, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %37, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %27
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %19

47:                                               ; preds = %19
  br label %48

48:                                               ; preds = %47, %13
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SMOOTH, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @smooth_l1_cpu(i32 %58, i64* %60, i64* %62, i32 %64, i32 %66)
  br label %104

68:                                               ; preds = %48
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @L1, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %75, %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @l1_cpu(i32 %78, i64* %80, i64* %82, i32 %84, i32 %86)
  br label %103

88:                                               ; preds = %68
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %90, %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @l2_cpu(i32 %93, i64* %95, i64* %97, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %88, %73
  br label %104

104:                                              ; preds = %103, %53
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %108, %110
  %112 = call i32 @sum_array(i32 %106, i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %104, %12
  ret void
}

declare dso_local i32 @smooth_l1_cpu(i32, i64*, i64*, i32, i32) #1

declare dso_local i32 @l1_cpu(i32, i64*, i64*, i32, i32) #1

declare dso_local i32 @l2_cpu(i32, i64*, i64*, i32, i32) #1

declare dso_local i32 @sum_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
