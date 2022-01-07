; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToLogSwitchType.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_StrToLogSwitchType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@LOG_SWITCH_NO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@LOG_SWITCH_SECOND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"minute\00", align 1
@LOG_SWITCH_MINUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@LOG_SWITCH_HOUR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@LOG_SWITCH_DAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@LOG_SWITCH_MONTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StrToLogSwitchType(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @INFINITE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @INFINITE, align 4
  store i32 %9, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @IsEmptyStr(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @StartWith(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @LOG_SWITCH_NO, align 4
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @StartWith(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @LOG_SWITCH_SECOND, align 4
  store i32 %25, i32* %4, align 4
  br label %54

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @StartWith(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @LOG_SWITCH_MINUTE, align 4
  store i32 %31, i32* %4, align 4
  br label %53

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @StartWith(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @LOG_SWITCH_HOUR, align 4
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = call i64 @StartWith(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @LOG_SWITCH_DAY, align 4
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %38
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @StartWith(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @LOG_SWITCH_MONTH, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %42
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %24
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %8
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @StartWith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
