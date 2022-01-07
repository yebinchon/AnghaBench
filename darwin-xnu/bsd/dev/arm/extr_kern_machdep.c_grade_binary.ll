; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_kern_machdep.c_grade_binary.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_kern_machdep.c_grade_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_ARCH_ABI64 = common dso_local global i32 0, align 4
@bootarg_no64exec = common dso_local global i32 0, align 4

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
  switch i32 %8, label %54 [
    i32 129, label %9
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %53 [
    i32 131, label %11
    i32 132, label %16
    i32 133, label %20
    i32 134, label %24
    i32 135, label %29
    i32 136, label %33
    i32 137, label %37
    i32 138, label %41
    i32 130, label %46
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %14 [
    i32 131, label %13
  ]

13:                                               ; preds = %11
  store i32 7, i32* %3, align 4
  br label %55

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %9, %15
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %19 [
    i32 132, label %18
  ]

18:                                               ; preds = %16
  store i32 6, i32* %3, align 4
  br label %55

19:                                               ; preds = %16
  br label %28

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %23 [
    i32 133, label %22
  ]

22:                                               ; preds = %20
  store i32 6, i32* %3, align 4
  br label %55

23:                                               ; preds = %20
  br label %53

24:                                               ; preds = %9
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %27 [
    i32 134, label %26
  ]

26:                                               ; preds = %24
  store i32 6, i32* %3, align 4
  br label %55

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %19
  br label %29

29:                                               ; preds = %9, %28
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %32 [
    i32 135, label %31
  ]

31:                                               ; preds = %29
  store i32 5, i32* %3, align 4
  br label %55

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %9, %32
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %36 [
    i32 136, label %35
  ]

35:                                               ; preds = %33
  store i32 4, i32* %3, align 4
  br label %55

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %9, %36
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %40 [
    i32 137, label %39
  ]

39:                                               ; preds = %37
  store i32 3, i32* %3, align 4
  br label %55

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %9, %40
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %45 [
    i32 138, label %43
    i32 139, label %44
  ]

43:                                               ; preds = %41
  store i32 2, i32* %3, align 4
  br label %55

44:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %55

45:                                               ; preds = %41
  br label %53

46:                                               ; preds = %9
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %52 [
    i32 130, label %48
    i32 137, label %49
    i32 138, label %50
    i32 139, label %51
  ]

48:                                               ; preds = %46
  store i32 4, i32* %3, align 4
  br label %55

49:                                               ; preds = %46
  store i32 3, i32* %3, align 4
  br label %55

50:                                               ; preds = %46
  store i32 2, i32* %3, align 4
  br label %55

51:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %55

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %9, %52, %45, %23
  br label %54

54:                                               ; preds = %53, %2
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %50, %49, %48, %44, %43, %39, %35, %31, %26, %22, %18, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @cpu_subtype(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
