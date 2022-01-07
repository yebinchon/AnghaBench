; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_check_line.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_check_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg = type { i32, i32, i32, i32, i32 }

@FILTER_WIDTH = common dso_local global i32 0, align 4
@INSIDE = common dso_local global i32 0, align 4
@OUTSIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg*, double, double)* @check_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_line(%struct.arg* %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arg*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.arg* %0, %struct.arg** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %8 = load double, double* %6, align 8
  %9 = load double, double* %7, align 8
  %10 = load %struct.arg*, %struct.arg** %5, align 8
  %11 = getelementptr inbounds %struct.arg, %struct.arg* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.arg*, %struct.arg** %5, align 8
  %14 = getelementptr inbounds %struct.arg, %struct.arg* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.arg*, %struct.arg** %5, align 8
  %17 = getelementptr inbounds %struct.arg, %struct.arg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.arg*, %struct.arg** %5, align 8
  %20 = getelementptr inbounds %struct.arg, %struct.arg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.arg*, %struct.arg** %5, align 8
  %23 = getelementptr inbounds %struct.arg, %struct.arg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* @FILTER_WIDTH, align 4
  %27 = call i64 @line_check(double %8, double %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %3
  %30 = load %struct.arg*, %struct.arg** %5, align 8
  %31 = getelementptr inbounds %struct.arg, %struct.arg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FILTER_WIDTH, align 4
  %34 = mul nsw i32 2, %33
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %29
  %37 = load double, double* %6, align 8
  %38 = load double, double* %7, align 8
  %39 = load %struct.arg*, %struct.arg** %5, align 8
  %40 = getelementptr inbounds %struct.arg, %struct.arg* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.arg*, %struct.arg** %5, align 8
  %43 = getelementptr inbounds %struct.arg, %struct.arg* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.arg*, %struct.arg** %5, align 8
  %46 = getelementptr inbounds %struct.arg, %struct.arg* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.arg*, %struct.arg** %5, align 8
  %49 = getelementptr inbounds %struct.arg, %struct.arg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.arg*, %struct.arg** %5, align 8
  %52 = getelementptr inbounds %struct.arg, %struct.arg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  %55 = load i32, i32* @FILTER_WIDTH, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i64 @line_check(double %37, double %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %54, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = load i32, i32* @INSIDE, align 4
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %36, %29
  store i32 0, i32* %4, align 4
  br label %64

62:                                               ; preds = %3
  %63 = load i32, i32* @OUTSIDE, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %61, %59
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @line_check(double, double, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
