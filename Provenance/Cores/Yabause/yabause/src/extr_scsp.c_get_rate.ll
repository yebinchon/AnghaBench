; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_get_rate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Slot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rate(%struct.Slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Slot* %0, %struct.Slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.Slot*, %struct.Slot** %4, align 8
  %8 = getelementptr inbounds %struct.Slot, %struct.Slot* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %6, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.Slot*, %struct.Slot** %4, align 8
  %17 = getelementptr inbounds %struct.Slot, %struct.Slot* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 2
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %20, %22
  %24 = load %struct.Slot*, %struct.Slot** %4, align 8
  %25 = getelementptr inbounds %struct.Slot, %struct.Slot* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 9
  %29 = and i32 %28, 1
  %30 = add nsw i32 %23, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.Slot*, %struct.Slot** %4, align 8
  %32 = getelementptr inbounds %struct.Slot, %struct.Slot* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 8, %34
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 8
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %15, %12
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %49

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %44, 60
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 60, i32* %3, align 4
  br label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %46, %42
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
