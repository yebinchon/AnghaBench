; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_get_policy.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_get_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1
@RANDOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"poly\00", align 1
@POLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@CONSTANT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@STEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@EXP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"sigmoid\00", align 1
@SIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"steps\00", align 1
@STEPS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Couldn't find policy %s, going with constant\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_policy(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @RANDOM, align 4
  store i32 %8, i32* %2, align 4
  br label %50

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @POLY, align 4
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @CONSTANT, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @STEP, align 4
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EXP, align 4
  store i32 %32, i32* %2, align 4
  br label %50

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @SIG, align 4
  store i32 %38, i32* %2, align 4
  br label %50

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @STEPS, align 4
  store i32 %44, i32* %2, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @stderr, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @CONSTANT, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %43, %37, %31, %25, %19, %13, %7
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
