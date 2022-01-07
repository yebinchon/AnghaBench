; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_ppnumber.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_ppnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = common dso_local global i64* null, align 8
@map = common dso_local global i32* null, align 8
@DIGIT = common dso_local global i32 0, align 4
@LETTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"`%S' is a preprocessing number but an invalid %s constant\0A\00", align 1
@token = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ppnumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppnumber(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i64*, i64** @cp, align 8
  %5 = getelementptr inbounds i64, i64* %4, i32 -1
  store i64* %5, i64** @cp, align 8
  %6 = bitcast i64* %4 to i8*
  store i8* %6, i8** %3, align 8
  br label %7

7:                                                ; preds = %48, %1
  %8 = load i32*, i32** @map, align 8
  %9 = load i64*, i64** @cp, align 8
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DIGIT, align 4
  %14 = load i32, i32* @LETTER, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = load i64*, i64** @cp, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 46
  br label %22

22:                                               ; preds = %18, %7
  %23 = phi i1 [ true, %7 ], [ %21, %18 ]
  br i1 %23, label %24, label %51

24:                                               ; preds = %22
  %25 = load i64*, i64** @cp, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 69
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i64*, i64** @cp, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 101
  br i1 %33, label %34, label %47

34:                                               ; preds = %29, %24
  %35 = load i64*, i64** @cp, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 45
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i64*, i64** @cp, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 43
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i64*, i64** @cp, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** @cp, align 8
  br label %47

47:                                               ; preds = %44, %39, %29
  br label %48

48:                                               ; preds = %47
  %49 = load i64*, i64** @cp, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** @cp, align 8
  br label %7

51:                                               ; preds = %22
  %52 = load i64*, i64** @cp, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = bitcast i8* %53 to i64*
  %55 = icmp ugt i64* %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* @token, align 4
  %58 = load i64*, i64** @cp, align 8
  %59 = bitcast i64* %58 to i8*
  %60 = load i32, i32* @token, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %57, i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @error(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
