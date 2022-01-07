; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckKernel.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_CheckKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Tick64 #1 Failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Tick64 #2 Failed.\0A\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@UNIX_ARG_EXIT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckKernel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 10, i64* %2, align 8
  %7 = call i64 (...) @Tick64()
  store i64 %7, i64* %4, align 8
  %8 = call i64 (...) @Tick64()
  store i64 %8, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %23, %0
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = call i64 (...) @Tick64()
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %39

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %5, align 8
  %22 = call i32 @SleepThread(i32 100)
  br label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %3, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %9

26:                                               ; preds = %9
  %27 = call i64 (...) @Tick64()
  %28 = load i64, i64* %4, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp sle i64 %30, 500
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = icmp sge i64 %33, 2000
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %26
  %36 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %39

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  store i32 1, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %35, %18
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @Print(i8*, ...) #1

declare dso_local i32 @SleepThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
