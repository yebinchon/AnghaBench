; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_move4_32.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_move4_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @move4_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move4_32(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to double*
  store double* %11, double** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to double*
  store double* %13, double** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 3
  store i32 %15, i32* %9, align 4
  %16 = load double*, double** %7, align 8
  %17 = getelementptr inbounds double, double* %16, i64 0
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %8, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  store double %18, double* %20, align 8
  %21 = load double*, double** %7, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  %23 = load double, double* %22, align 8
  %24 = load double*, double** %8, align 8
  %25 = getelementptr inbounds double, double* %24, i64 1
  store double %23, double* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load double*, double** %7, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds double, double* %27, i64 %28
  store double* %29, double** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load double*, double** %8, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds double, double* %31, i64 %32
  store double* %33, double** %8, align 8
  %34 = load double*, double** %7, align 8
  %35 = getelementptr inbounds double, double* %34, i64 0
  %36 = load double, double* %35, align 8
  %37 = load double*, double** %8, align 8
  %38 = getelementptr inbounds double, double* %37, i64 0
  store double %36, double* %38, align 8
  %39 = load double*, double** %7, align 8
  %40 = getelementptr inbounds double, double* %39, i64 1
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %8, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  store double %41, double* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load double*, double** %7, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds double, double* %45, i64 %46
  store double* %47, double** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load double*, double** %8, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds double, double* %49, i64 %50
  store double* %51, double** %8, align 8
  %52 = load double*, double** %7, align 8
  %53 = getelementptr inbounds double, double* %52, i64 0
  %54 = load double, double* %53, align 8
  %55 = load double*, double** %8, align 8
  %56 = getelementptr inbounds double, double* %55, i64 0
  store double %54, double* %56, align 8
  %57 = load double*, double** %7, align 8
  %58 = getelementptr inbounds double, double* %57, i64 1
  %59 = load double, double* %58, align 8
  %60 = load double*, double** %8, align 8
  %61 = getelementptr inbounds double, double* %60, i64 1
  store double %59, double* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load double*, double** %7, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds double, double* %63, i64 %64
  store double* %65, double** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load double*, double** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds double, double* %67, i64 %68
  store double* %69, double** %8, align 8
  %70 = load double*, double** %7, align 8
  %71 = getelementptr inbounds double, double* %70, i64 0
  %72 = load double, double* %71, align 8
  %73 = load double*, double** %8, align 8
  %74 = getelementptr inbounds double, double* %73, i64 0
  store double %72, double* %74, align 8
  %75 = load double*, double** %7, align 8
  %76 = getelementptr inbounds double, double* %75, i64 1
  %77 = load double, double* %76, align 8
  %78 = load double*, double** %8, align 8
  %79 = getelementptr inbounds double, double* %78, i64 1
  store double %77, double* %79, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
