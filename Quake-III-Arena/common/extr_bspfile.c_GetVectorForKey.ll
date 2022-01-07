; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_bspfile.c_GetVectorForKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_bspfile.c_GetVectorForKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetVectorForKey(i32* %0, i8* %1, double* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store double* %2, double** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @ValueForKey(i32* %11, i8* %12)
  store i8* %13, i8** %7, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), double* %8, double* %9, double* %10)
  %16 = load double, double* %8, align 8
  %17 = load double*, double** %6, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  store double %16, double* %18, align 8
  %19 = load double, double* %9, align 8
  %20 = load double*, double** %6, align 8
  %21 = getelementptr inbounds double, double* %20, i64 1
  store double %19, double* %21, align 8
  %22 = load double, double* %10, align 8
  %23 = load double*, double** %6, align 8
  %24 = getelementptr inbounds double, double* %23, i64 2
  store double %22, double* %24, align 8
  ret void
}

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, double*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
