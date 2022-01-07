; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_eval.c_digit.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_eval.c_digit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 48, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 57
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 %9, 48
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %5, %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp sle i32 97, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp sle i32 %15, 102
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = sub nsw i32 %18, 87
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %14, %11
  %21 = load i32, i32* %2, align 4
  %22 = icmp sle i32 65, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp sle i32 %24, 70
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 %27, 55
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %23, %20
  store i32 -1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
