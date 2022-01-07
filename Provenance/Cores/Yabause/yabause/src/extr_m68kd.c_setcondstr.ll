; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_setcondstr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_setcondstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"t \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"f \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"vs\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @setcondstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setcondstr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 15
  switch i32 %7, label %56 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %14
    i32 3, label %17
    i32 4, label %20
    i32 5, label %23
    i32 6, label %26
    i32 7, label %29
    i32 8, label %32
    i32 9, label %35
    i32 10, label %38
    i32 11, label %41
    i32 12, label %44
    i32 13, label %47
    i32 14, label %50
    i32 15, label %53
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  br label %58

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %19, i32* %3, align 4
  br label %58

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %2
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @sprintf(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %2
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %2
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %2
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32 %46, i32* %3, align 4
  br label %58

47:                                               ; preds = %2
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %2
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  store i32 %52, i32* %3, align 4
  br label %58

53:                                               ; preds = %2
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %2
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
