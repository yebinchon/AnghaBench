; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_reorg_layer.c_forward_reorg_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_reorg_layer.c_forward_reorg_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_reorg_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memcpy(i64 %11, i64 %13, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %30, %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @flatten(i64 %28, i32 %33, i32 %35, i32 %37, i32 0)
  br label %52

39:                                               ; preds = %9
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @flatten(i64 %41, i32 %46, i32 %48, i32 %50, i32 1)
  br label %52

52:                                               ; preds = %39, %26
  br label %125

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %68, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %67, %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %75, %80
  %82 = call i32 @copy_cpu(i32 %65, i64 %73, i32 1, i64 %81, i32 1)
  br label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %58

86:                                               ; preds = %58
  br label %124

87:                                               ; preds = %53
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @reorg_cpu(i64 %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 %103, i32 1, i64 %105)
  br label %123

107:                                              ; preds = %87
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @reorg_cpu(i64 %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 0, i64 %121)
  br label %123

123:                                              ; preds = %107, %91
  br label %124

124:                                              ; preds = %123, %86
  br label %125

125:                                              ; preds = %124, %52
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @flatten(i64, i32, i32, i32, i32) #1

declare dso_local i32 @copy_cpu(i32, i64, i32, i64, i32) #1

declare dso_local i32 @reorg_cpu(i64, i32, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
