; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_switch.c_g.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_switch.c_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"g:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"2 %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"3 %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"5 %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"6 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 10
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %18 [
    i32 1, label %9
    i32 2, label %9
    i32 3, label %12
    i32 4, label %12
    i32 5, label %12
    i32 6, label %15
    i32 7, label %15
    i32 8, label %15
    i32 1001, label %21
    i32 1002, label %21
    i32 1003, label %21
    i32 1004, label %21
    i32 3001, label %24
    i32 3002, label %24
    i32 3003, label %24
    i32 3004, label %24
  ]

9:                                                ; preds = %7, %7
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  br label %27

12:                                               ; preds = %7, %7, %7
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  br label %27

15:                                               ; preds = %7, %7, %7
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %7, %15
  %19 = load i32, i32* %2, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  br label %27

21:                                               ; preds = %7, %7, %7, %7
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  br label %27

24:                                               ; preds = %7, %7, %7, %7
  %25 = load i32, i32* %2, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %21, %18, %12, %9
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %4

31:                                               ; preds = %4
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
