; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_circle_check_line.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_circle_check_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg = type { i32, i32, i32, i32 }

@INSIDE = common dso_local global i32 0, align 4
@OUTSIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg*, double, double, double)* @circle_check_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @circle_check_line(%struct.arg* %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.arg*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.arg* %0, %struct.arg** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %14 = load %struct.arg*, %struct.arg** %6, align 8
  %15 = getelementptr inbounds %struct.arg, %struct.arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.arg*, %struct.arg** %6, align 8
  %18 = getelementptr inbounds %struct.arg, %struct.arg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = sdiv i32 %20, 2
  %22 = sitofp i32 %21 to double
  store double %22, double* %10, align 8
  %23 = load %struct.arg*, %struct.arg** %6, align 8
  %24 = getelementptr inbounds %struct.arg, %struct.arg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.arg*, %struct.arg** %6, align 8
  %27 = getelementptr inbounds %struct.arg, %struct.arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = call i32 @fabs(i32 %29)
  %31 = sdiv i32 %30, 2
  %32 = sitofp i32 %31 to double
  store double %32, double* %11, align 8
  %33 = load %struct.arg*, %struct.arg** %6, align 8
  %34 = getelementptr inbounds %struct.arg, %struct.arg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.arg*, %struct.arg** %6, align 8
  %37 = getelementptr inbounds %struct.arg, %struct.arg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = sdiv i32 %39, 2
  %41 = sitofp i32 %40 to double
  store double %41, double* %12, align 8
  %42 = load %struct.arg*, %struct.arg** %6, align 8
  %43 = getelementptr inbounds %struct.arg, %struct.arg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.arg*, %struct.arg** %6, align 8
  %46 = getelementptr inbounds %struct.arg, %struct.arg* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = call i32 @fabs(i32 %48)
  %50 = sdiv i32 %49, 2
  %51 = sitofp i32 %50 to double
  store double %51, double* %13, align 8
  %52 = load double, double* %7, align 8
  %53 = load double, double* %8, align 8
  %54 = load double, double* %10, align 8
  %55 = load double, double* %11, align 8
  %56 = fsub double %54, %55
  %57 = load double, double* %9, align 8
  %58 = fsub double %56, %57
  %59 = load double, double* %12, align 8
  %60 = load double, double* %13, align 8
  %61 = fsub double %59, %60
  %62 = load double, double* %9, align 8
  %63 = fsub double %61, %62
  %64 = load double, double* %10, align 8
  %65 = load double, double* %11, align 8
  %66 = fadd double %64, %65
  %67 = load double, double* %9, align 8
  %68 = fadd double %66, %67
  %69 = load double, double* %12, align 8
  %70 = load double, double* %13, align 8
  %71 = fadd double %69, %70
  %72 = load double, double* %9, align 8
  %73 = fadd double %71, %72
  %74 = call i64 @circle_check(double %52, double %53, double %58, double %63, double %68, double %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %4
  %77 = load double, double* %9, align 8
  %78 = load double, double* %11, align 8
  %79 = fsub double %78, %77
  store double %79, double* %11, align 8
  %80 = load double, double* %9, align 8
  %81 = load double, double* %13, align 8
  %82 = fsub double %81, %80
  store double %82, double* %13, align 8
  %83 = load double, double* %11, align 8
  %84 = fcmp ogt double %83, 0.000000e+00
  br i1 %84, label %85, label %107

85:                                               ; preds = %76
  %86 = load double, double* %13, align 8
  %87 = fcmp ogt double %86, 0.000000e+00
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load double, double* %7, align 8
  %90 = load double, double* %8, align 8
  %91 = load double, double* %10, align 8
  %92 = load double, double* %11, align 8
  %93 = fsub double %91, %92
  %94 = load double, double* %12, align 8
  %95 = load double, double* %13, align 8
  %96 = fsub double %94, %95
  %97 = load double, double* %10, align 8
  %98 = load double, double* %11, align 8
  %99 = fadd double %97, %98
  %100 = load double, double* %12, align 8
  %101 = load double, double* %13, align 8
  %102 = fadd double %100, %101
  %103 = call i64 @circle_check(double %89, double %90, double %93, double %96, double %99, double %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %88
  %106 = load i32, i32* @INSIDE, align 4
  store i32 %106, i32* %5, align 4
  br label %110

107:                                              ; preds = %88, %85, %76
  store i32 0, i32* %5, align 4
  br label %110

108:                                              ; preds = %4
  %109 = load i32, i32* @OUTSIDE, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %107, %105
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @fabs(i32) #1

declare dso_local i64 @circle_check(double, double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
