; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalcPoint.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiCalcPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERVER_MAX_SESSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"i_max_sessions\00", align 1
@FARM_BASE_POINT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiCalcPoint(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @SERVER_MAX_SESSIONS, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 100, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @GetServerCapsInt(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %8, align 4
  %25 = sitofp i32 %24 to double
  %26 = load i32, i32* %6, align 4
  %27 = sitofp i32 %26 to double
  %28 = fmul double %27, 1.000000e+02
  %29 = load i32, i32* %7, align 4
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %28, %30
  %32 = load i32, i32* %8, align 4
  %33 = sitofp i32 %32 to double
  %34 = call double @MIN(double %31, double %33)
  %35 = fsub double %25, %34
  %36 = load i64, i64* @FARM_BASE_POINT, align 8
  %37 = sitofp i64 %36 to double
  %38 = fmul double %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %38, %40
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %23, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @GetServerCapsInt(i32*, i8*) #1

declare dso_local double @MIN(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
