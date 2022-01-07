; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_expr1.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_expr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expr1.stop = internal global [3 x i8] c"\80\81\00", align 1
@t = common dso_local global i8 0, align 1
@prec = common dso_local global i32* null, align 8
@oper = common dso_local global i64* null, align 8
@ASGN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expr1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i8* (...) @expr2()
  store i8* %5, i8** %3, align 8
  %6 = load i8, i8* @t, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 61
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** @prec, align 8
  %11 = load i8, i8* @t, align 1
  %12 = sext i8 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 6
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load i32*, i32** @prec, align 8
  %18 = load i8, i8* @t, align 1
  %19 = sext i8 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 8
  br i1 %22, label %37, label %23

23:                                               ; preds = %16, %9
  %24 = load i32*, i32** @prec, align 8
  %25 = load i8, i8* @t, align 1
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 11
  br i1 %29, label %30, label %61

30:                                               ; preds = %23
  %31 = load i32*, i32** @prec, align 8
  %32 = load i8, i8* @t, align 1
  %33 = sext i8 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 13
  br i1 %36, label %37, label %61

37:                                               ; preds = %30, %16, %1
  %38 = load i8, i8* @t, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = call signext i8 (...) @gettok()
  store i8 %40, i8* @t, align 1
  %41 = load i64*, i64** @oper, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ASGN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i64, i64* @ASGN, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i8* @expr1(i32 0)
  %52 = call i32 @value(i8* %51)
  %53 = call i8* @asgntree(i64 %49, i8* %50, i32 %52)
  store i8* %53, i8** %3, align 8
  br label %60

54:                                               ; preds = %37
  %55 = call i32 @expect(i8 signext 61)
  %56 = load i32, i32* %4, align 4
  %57 = load i8*, i8** %3, align 8
  %58 = call i8* @expr1(i32 0)
  %59 = call i8* @incr(i32 %56, i8* %57, i8* %58)
  store i8* %59, i8** %3, align 8
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %30, %23
  %62 = load i32, i32* %2, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @test(i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @expr1.stop, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i8* @expr2(...) #1

declare dso_local signext i8 @gettok(...) #1

declare dso_local i8* @asgntree(i64, i8*, i32) #1

declare dso_local i32 @value(i8*) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i8* @incr(i32, i8*, i8*) #1

declare dso_local i32 @test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
