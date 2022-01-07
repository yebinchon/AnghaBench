; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_kern_machdep.c_grade_binary.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_kern_machdep.c_grade_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grade_binary(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @cpu_subtype()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %22 [
    i32 128, label %9
    i32 129, label %21
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %20 [
    i32 131, label %11
    i32 130, label %16
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %15 [
    i32 131, label %13
    i32 132, label %14
  ]

13:                                               ; preds = %11
  store i32 3, i32* %3, align 4
  br label %23

14:                                               ; preds = %11
  store i32 2, i32* %3, align 4
  br label %23

15:                                               ; preds = %11
  br label %20

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %19 [
    i32 132, label %18
  ]

18:                                               ; preds = %16
  store i32 2, i32* %3, align 4
  br label %23

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %9, %19, %15
  br label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %23

22:                                               ; preds = %2, %20
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21, %18, %14, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @cpu_subtype(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
