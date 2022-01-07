; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scalebit.c_scale_precondition.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scalebit.c_scale_precondition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scale_precondition(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %46

19:                                               ; preds = %15, %12, %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %46

29:                                               ; preds = %25, %22, %19
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %41 [
    i32 2, label %31
    i32 3, label %31
    i32 4, label %36
  ]

31:                                               ; preds = %29, %29
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %46

35:                                               ; preds = %31
  br label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp ult i32 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %46

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %29, %40, %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %46

45:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %44, %39, %34, %28, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
