; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kissf_fft.c_kissf_fft_next_fast_size.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kissf_fft.c_kissf_fft_next_fast_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kissf_fft_next_fast_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %1, %33
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %10, %4
  %7 = load i32, i32* %3, align 4
  %8 = srem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %11, 2
  store i32 %12, i32* %3, align 4
  br label %6

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %18, %13
  %15 = load i32, i32* %3, align 4
  %16 = srem i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 3
  store i32 %20, i32* %3, align 4
  br label %14

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %3, align 4
  %24 = srem i32 %23, 5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = sdiv i32 %27, 5
  store i32 %28, i32* %3, align 4
  br label %22

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %4

36:                                               ; preds = %32
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
