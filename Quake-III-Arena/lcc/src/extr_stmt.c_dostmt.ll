; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_dostmt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_dostmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@refinc = common dso_local global double 0.000000e+00, align 8
@t = common dso_local global i32 0, align 4
@WHILE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @dostmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dostmt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load double, double* @refinc, align 8
  %8 = fmul double %7, 1.000000e+01
  store double %8, double* @refinc, align 8
  %9 = call i32 (...) @gettok()
  store i32 %9, i32* @t, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @definelab(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @statement(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @definelab(i32 %17)
  %19 = load i8, i8* @WHILE, align 1
  %20 = call i32 @expect(i8 signext %19)
  %21 = call i32 @expect(i8 signext 40)
  %22 = call i32 @definept(i32* null)
  %23 = call i32 @conditional(i8 signext 41)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @walk(i32 %23, i32 %24, i32 0)
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 2
  %28 = call %struct.TYPE_2__* @findlabel(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 2
  %35 = call i32 @definelab(i32 %34)
  br label %36

36:                                               ; preds = %32, %3
  ret void
}

declare dso_local i32 @gettok(...) #1

declare dso_local i32 @definelab(i32) #1

declare dso_local i32 @statement(i32, i32, i32) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @definept(i32*) #1

declare dso_local i32 @walk(i32, i32, i32) #1

declare dso_local i32 @conditional(i8 signext) #1

declare dso_local %struct.TYPE_2__* @findlabel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
