; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scspdsp.c_int_to_float.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scspdsp.c_int_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @int_to_float(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 23
  %7 = and i32 %6, 1
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %12, 8388607
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp sle i32 %15, 131071
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = mul nsw i32 %18, 64
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 12288
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %2, align 4
  %24 = icmp sle i32 %23, 1048575
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = mul nsw i32 %26, 8
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 6144
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %2, align 4
  %32 = icmp sle i32 %31, 4194303
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = mul nsw i32 %34, 2
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 2048
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %2, align 4
  %40 = icmp sle i32 %39, 4194303
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 2048
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %2, align 4
  %48 = icmp sle i32 %47, 4194303
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 2048
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %2, align 4
  %54 = ashr i32 %53, 11
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, 2047
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %2, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %2, align 4
  %64 = xor i32 %63, 34815
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
