; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_IsWordChar.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_IsWordChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsWordChar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 97
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 122
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 1, i32* %2, align 4
  br label %53

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 65
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 90
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %53

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 48
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 57
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %53

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 95
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %53

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 46
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 34
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %53

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 39
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %53

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 44
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 41
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 93
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %53

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %51, %47, %43, %39, %35, %31, %27, %23, %16, %9
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
