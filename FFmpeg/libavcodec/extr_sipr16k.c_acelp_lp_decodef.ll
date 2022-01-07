; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr16k.c_acelp_lp_decodef.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr16k.c_acelp_lp_decodef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_FILTER_ORDER_16k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, double*, double*)* @acelp_lp_decodef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acelp_lp_decodef(float* %0, float* %1, double* %2, double* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %12 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca double, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %36, %4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load double*, double** %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fadd double %25, %30
  %32 = fmul double %31, 5.000000e-01
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %15, i64 %34
  store double %32, double* %35, align 8
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load float*, float** %5, align 8
  %41 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %42 = ashr i32 %41, 1
  %43 = call i32 @ff_acelp_lspd2lpc(double* %15, float* %40, i32 %42)
  %44 = load double*, double** %7, align 8
  %45 = load float*, float** %6, align 8
  %46 = load i32, i32* @LP_FILTER_ORDER_16k, align 4
  %47 = ashr i32 %46, 1
  %48 = call i32 @ff_acelp_lspd2lpc(double* %44, float* %45, i32 %47)
  %49 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_acelp_lspd2lpc(double*, float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
