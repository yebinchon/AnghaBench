; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Iter.c_Range_Len.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Iter.c_Range_Len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Range*)* @Range_Len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Range_Len(%struct.Range* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.Range*, align 8
  %4 = alloca %struct.Range*, align 8
  store %struct.Range* %0, %struct.Range** %3, align 8
  %5 = load %struct.Range*, %struct.Range** %3, align 8
  store %struct.Range* %5, %struct.Range** %4, align 8
  %6 = load %struct.Range*, %struct.Range** %4, align 8
  %7 = getelementptr inbounds %struct.Range, %struct.Range* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %53

11:                                               ; preds = %1
  %12 = load %struct.Range*, %struct.Range** %4, align 8
  %13 = getelementptr inbounds %struct.Range, %struct.Range* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.Range*, %struct.Range** %4, align 8
  %18 = getelementptr inbounds %struct.Range, %struct.Range* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.Range*, %struct.Range** %4, align 8
  %22 = getelementptr inbounds %struct.Range, %struct.Range* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load %struct.Range*, %struct.Range** %4, align 8
  %26 = getelementptr inbounds %struct.Range, %struct.Range* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %24, %27
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %2, align 8
  br label %53

31:                                               ; preds = %11
  %32 = load %struct.Range*, %struct.Range** %4, align 8
  %33 = getelementptr inbounds %struct.Range, %struct.Range* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = load %struct.Range*, %struct.Range** %4, align 8
  %38 = getelementptr inbounds %struct.Range, %struct.Range* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.Range*, %struct.Range** %4, align 8
  %42 = getelementptr inbounds %struct.Range, %struct.Range* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = load %struct.Range*, %struct.Range** %4, align 8
  %46 = getelementptr inbounds %struct.Range, %struct.Range* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 0, %47
  %49 = sdiv i32 %44, %48
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %2, align 8
  br label %53

52:                                               ; preds = %31
  store i64 0, i64* %2, align 8
  br label %53

53:                                               ; preds = %52, %36, %16, %10
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
