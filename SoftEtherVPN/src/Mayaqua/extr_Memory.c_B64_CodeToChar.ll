; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_B64_CodeToChar.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_B64_CodeToChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @B64_CodeToChar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 61, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 25
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, 65
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp sge i32 %10, 26
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp sle i32 %13, 51
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 %16, 26
  %18 = add nsw i32 %17, 97
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %12, %9
  %20 = load i32, i32* %2, align 4
  %21 = icmp sge i32 %20, 52
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = icmp sle i32 %23, 61
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 %26, 52
  %28 = add nsw i32 %27, 48
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %22, %19
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 62
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 43, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 63
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 47, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  %39 = trunc i32 %38 to i8
  ret i8 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
