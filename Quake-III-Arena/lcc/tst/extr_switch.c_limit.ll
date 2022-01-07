; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_switch.c_limit.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_switch.c_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"2\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"3\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"4\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"5\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @limit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 128, i32* %2, align 4
  br label %3

3:                                                ; preds = %21, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp sle i32 %4, 133
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %18 [
    i32 128, label %8
    i32 129, label %10
    i32 130, label %12
    i32 131, label %14
    i32 132, label %16
  ]

8:                                                ; preds = %6
  %9 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %20

10:                                               ; preds = %6
  %11 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %20

12:                                               ; preds = %6
  %13 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %20

14:                                               ; preds = %6
  %15 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %20

16:                                               ; preds = %6
  %17 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %20

18:                                               ; preds = %6
  %19 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %16, %14, %12, %10, %8
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %3

24:                                               ; preds = %3
  store i32 129, i32* %2, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 124
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  switch i32 %29, label %40 [
    i32 129, label %30
    i32 128, label %32
    i32 127, label %34
    i32 126, label %36
    i32 125, label %38
  ]

30:                                               ; preds = %28
  %31 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %42

32:                                               ; preds = %28
  %33 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %42

34:                                               ; preds = %28
  %35 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %42

36:                                               ; preds = %28
  %37 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %42

38:                                               ; preds = %28
  %39 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %42

40:                                               ; preds = %28
  %41 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %32, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %2, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
