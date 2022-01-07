; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_switch.c_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_switch.c_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"f:\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %35, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 20
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  switch i32 %11, label %32 [
    i32 1, label %12
    i32 2, label %14
    i32 7, label %16
    i32 8, label %18
    i32 9, label %20
    i32 16, label %22
    i32 17, label %24
    i32 18, label %26
    i32 19, label %28
    i32 20, label %30
  ]

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %9
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %9
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %9
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %9
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %9
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %9
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %9
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %9, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %6

38:                                               ; preds = %6
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
