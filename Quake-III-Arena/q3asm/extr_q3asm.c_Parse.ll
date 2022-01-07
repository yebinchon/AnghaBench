; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_Parse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@token = common dso_local global i32* null, align 8
@lineBuffer = common dso_local global i8* null, align 8
@lineParseOffset = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Parse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** @token, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %0
  %7 = load i8*, i8** @lineBuffer, align 8
  %8 = load i64, i64* @lineParseOffset, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp sle i32 %11, 32
  br i1 %12, label %13, label %25

13:                                               ; preds = %6
  %14 = load i8*, i8** @lineBuffer, align 8
  %15 = load i64, i64* @lineParseOffset, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %1, align 4
  br label %60

22:                                               ; preds = %13
  %23 = load i64, i64* @lineParseOffset, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* @lineParseOffset, align 8
  br label %6

25:                                               ; preds = %6
  %26 = load i8*, i8** @lineBuffer, align 8
  %27 = load i64, i64* @lineParseOffset, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 59
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %1, align 4
  br label %60

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %2, align 4
  %38 = load i32*, i32** @token, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = load i64, i64* @lineParseOffset, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* @lineParseOffset, align 8
  %46 = load i8*, i8** @lineBuffer, align 8
  %47 = load i64, i64* @lineParseOffset, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %2, align 4
  %53 = icmp sgt i32 %52, 32
  br i1 %53, label %36, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** @token, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @qtrue, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %54, %33, %20
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
