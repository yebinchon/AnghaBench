; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_supcon.c_supcon_leni.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_support_supcon.c_supcon_leni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @supcon_leni(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %2, align 4
  br label %68

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 1000
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 3
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 10000
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %2, align 4
  br label %68

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 100000
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 5
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 1000000
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 6
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 10000000
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 7
  store i32 %54, i32* %2, align 4
  br label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 100000000
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 8
  store i32 %60, i32* %2, align 4
  br label %68

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 1000000000
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 9
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %61
  store i32 10, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %58, %52, %46, %40, %34, %28, %22, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
