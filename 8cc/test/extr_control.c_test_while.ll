; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_control.c_test_while.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_control.c_test_while.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_while to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_while() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 100
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  %10 = add nsw i32 %7, %8
  store i32 %10, i32* %1, align 4
  br label %3

11:                                               ; preds = %3
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @expect(i32 5050, i32 %12)
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %17, %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp sle i32 %15, 100
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  %21 = add nsw i32 %18, %19
  store i32 %21, i32* %1, align 4
  br label %14

22:                                               ; preds = %14
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 5051, i32 %23)
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %40, %32, %22
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  %31 = icmp slt i32 %29, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %25

33:                                               ; preds = %28
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %41

40:                                               ; preds = %33
  br label %25

41:                                               ; preds = %39, %25
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @expect(i32 30, i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %48, %41
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  %47 = icmp slt i32 %45, 100
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %44

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49
  store i32 67, i32* %2, align 4
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @expect(i32 67, i32 %52)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
