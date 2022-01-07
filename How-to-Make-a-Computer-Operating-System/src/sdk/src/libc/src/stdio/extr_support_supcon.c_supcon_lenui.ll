; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_supcon.c_supcon_lenui.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_supcon.c_supcon_lenui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @supcon_lenui(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 100
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 2, i32* %2, align 4
  br label %40

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp ult i32 %12, 1000
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 3, i32* %2, align 4
  br label %40

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp ult i32 %16, 10000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 4, i32* %2, align 4
  br label %40

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp ult i32 %20, 100000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 5, i32* %2, align 4
  br label %40

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp ult i32 %24, 1000000
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 6, i32* %2, align 4
  br label %40

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp ult i32 %28, 10000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 7, i32* %2, align 4
  br label %40

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp ult i32 %32, 100000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 8, i32* %2, align 4
  br label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = icmp ult i32 %36, 1000000000
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 9, i32* %2, align 4
  br label %40

39:                                               ; preds = %35
  store i32 10, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
