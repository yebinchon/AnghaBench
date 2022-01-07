; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_operator.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RBRA = common dso_local global i32 0, align 4
@nbra = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unmatched right paren\00", align 1
@LBRA = common dso_local global i32 0, align 4
@cursubid = common dso_local global i64 0, align 8
@NSUBEXP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"too many subexpressions\00", align 1
@lastwasand = common dso_local global i64 0, align 8
@CAT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@STAR = common dso_local global i32 0, align 4
@QUEST = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @operator(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @RBRA, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i64, i64* @nbra, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* @nbra, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @rcerror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @LBRA, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i64, i64* @cursubid, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @cursubid, align 8
  %19 = load i64, i64* @NSUBEXP, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @rcerror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i64, i64* @nbra, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @nbra, align 8
  %26 = load i64, i64* @lastwasand, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @CAT, align 4
  call void @operator(i32 %29)
  br label %30

30:                                               ; preds = %28, %23
  br label %34

31:                                               ; preds = %12
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @evaluntil(i32 %32)
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @RBRA, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @pushator(i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* @lastwasand, align 8
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @STAR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @QUEST, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @PLUS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @RBRA, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50, %46, %41
  %59 = load i64, i64* @TRUE, align 8
  store i64 %59, i64* @lastwasand, align 8
  br label %60

60:                                               ; preds = %58, %54
  ret void
}

declare dso_local i32 @rcerror(i8*) #1

declare dso_local i32 @evaluntil(i32) #1

declare dso_local i32 @pushator(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
