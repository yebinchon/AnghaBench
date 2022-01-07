; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_libgps_loader.c_deg_to_str.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_libgps_loader.c_deg_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%03d/1,%02d/1,%05d/1000\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deg_to_str(double %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  store i8 0, i8* %15, align 1
  %16 = load double, double* %5, align 8
  %17 = fcmp olt double %16, 0.000000e+00
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load double, double* %5, align 8
  %20 = fcmp ogt double %19, 3.600000e+02
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %14
  store i32 -1, i32* %4, align 4
  br label %40

22:                                               ; preds = %18
  %23 = load double, double* %5, align 8
  %24 = call double @modf(double %23, double* %9) #3
  store double %24, double* %10, align 8
  %25 = load double, double* %10, align 8
  %26 = fmul double %25, 6.000000e+01
  %27 = call double @modf(double %26, double* %10) #3
  store double %27, double* %8, align 8
  %28 = load double, double* %8, align 8
  %29 = fmul double %28, 6.000000e+01
  store double %29, double* %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load double, double* %9, align 8
  %33 = fptosi double %32 to i32
  %34 = load double, double* %10, align 8
  %35 = fptosi double %34 to i32
  %36 = load double, double* %8, align 8
  %37 = fmul double %36, 1.000000e+03
  %38 = fptosi double %37 to i32
  %39 = call i32 @snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %22, %21, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
