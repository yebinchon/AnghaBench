; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_inside_circle_filled.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_inside_circle_filled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg*, double, double)* @inside_circle_filled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inside_circle_filled(%struct.arg* %0, double %1, double %2) #0 {
  %4 = alloca %struct.arg*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.arg* %0, %struct.arg** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %5, align 8
  %8 = load double, double* %6, align 8
  %9 = load %struct.arg*, %struct.arg** %4, align 8
  %10 = getelementptr inbounds %struct.arg, %struct.arg* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.arg*, %struct.arg** %4, align 8
  %13 = getelementptr inbounds %struct.arg, %struct.arg* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.arg*, %struct.arg** %4, align 8
  %16 = getelementptr inbounds %struct.arg, %struct.arg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.arg*, %struct.arg** %4, align 8
  %19 = getelementptr inbounds %struct.arg, %struct.arg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @circle_check(double %7, double %8, i32 %11, i32 %14, i32 %17, i32 %20)
  ret i32 %21
}

declare dso_local i32 @circle_check(double, double, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
