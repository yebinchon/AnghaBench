; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_control.c_test_do.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_control.c_test_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_do() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %9, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %2, align 4
  %8 = add nsw i32 %5, %6
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %4
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 100
  br i1 %11, label %4, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @expect(i32 5050, i32 %13)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %12
  store i32 37, i32* %2, align 4
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @expect(i32 37, i32 %17)
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %32, %16
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  %22 = icmp slt i32 %20, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 9
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %19, label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @expect(i32 30, i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %39, %35
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  %42 = icmp slt i32 %40, 100
  br i1 %42, label %38, label %43

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %45, %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  %48 = icmp slt i32 %46, 100
  br i1 %48, label %44, label %49

49:                                               ; preds = %45
  store float 1.000000e+00, float* %3, align 4
  store i32 70, i32* %2, align 4
  br label %50

50:                                               ; preds = %53, %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load float, float* %3, align 4
  %55 = fpext float %54 to double
  %56 = fsub double %55, 5.000000e-01
  %57 = fptrunc double %56 to float
  store float %57, float* %3, align 4
  %58 = fcmp une float %57, 0.000000e+00
  br i1 %58, label %50, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @expect(i32 72, i32 %60)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
