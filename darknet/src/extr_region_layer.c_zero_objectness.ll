; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_region_layer.c_zero_objectness.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_region_layer.c_zero_objectness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zero_objectness(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %2, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %8, %10
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %20, %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %26, %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @entry_index(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0, i32 0, i32 %28, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %19
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %14

40:                                               ; preds = %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %5

44:                                               ; preds = %5
  ret void
}

declare dso_local i32 @entry_index(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
