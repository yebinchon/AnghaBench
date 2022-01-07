; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_getchr.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_lex.c_getchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map = common dso_local global i32* null, align 8
@cp = common dso_local global i64* null, align 8
@BLANK = common dso_local global i32 0, align 4
@NEWLINE = common dso_local global i32 0, align 4
@limit = common dso_local global i64* null, align 8
@EOI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getchr() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %37, %0
  br label %3

3:                                                ; preds = %12, %2
  %4 = load i32*, i32** @map, align 8
  %5 = load i64*, i64** @cp, align 8
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BLANK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64*, i64** @cp, align 8
  %14 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %14, i64** @cp, align 8
  br label %3

15:                                               ; preds = %3
  %16 = load i32*, i32** @map, align 8
  %17 = load i64*, i64** @cp, align 8
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NEWLINE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load i64*, i64** @cp, align 8
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %1, align 4
  br label %38

28:                                               ; preds = %15
  %29 = load i64*, i64** @cp, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** @cp, align 8
  %31 = call i32 (...) @nextline()
  %32 = load i64*, i64** @cp, align 8
  %33 = load i64*, i64** @limit, align 8
  %34 = icmp eq i64* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @EOI, align 4
  store i32 %36, i32* %1, align 4
  br label %38

37:                                               ; preds = %28
  br label %2

38:                                               ; preds = %35, %24
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @nextline(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
