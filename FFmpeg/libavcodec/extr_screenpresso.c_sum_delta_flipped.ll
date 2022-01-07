; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_screenpresso.c_sum_delta_flipped.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_screenpresso.c_sum_delta_flipped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i64*, i32, i32, i32)* @sum_delta_flipped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sum_delta_flipped(i64* %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  br label %14

14:                                               ; preds = %47, %6
  %15 = load i32, i32* %12, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i64*, i64** %9, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %23, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %32
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* %8, align 4
  %44 = load i64*, i64** %7, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64* %46, i64** %7, align 8
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %12, align 4
  br label %14

50:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
