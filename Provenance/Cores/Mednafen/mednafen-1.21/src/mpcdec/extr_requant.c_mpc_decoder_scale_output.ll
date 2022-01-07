; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_requant.c_mpc_decoder_scale_output.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_requant.c_mpc_decoder_scale_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPC_FIXED_POINT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc_decoder_scale_output(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %8 = load i32, i32* @MPC_FIXED_POINT_SHIFT, align 4
  %9 = sub nsw i32 %8, 1
  %10 = shl i32 1, %9
  %11 = sitofp i32 %10 to double
  %12 = fdiv double 1.000000e+00, %11
  %13 = load double, double* %4, align 8
  %14 = fmul double %13, %12
  store double %14, double* %4, align 8
  %15 = load double, double* %4, align 8
  store double %15, double* %7, align 8
  store double %15, double* %6, align 8
  %16 = load double, double* %4, align 8
  %17 = call i32 @SET_SCF(i32 1, double %16)
  %18 = load double, double* %6, align 8
  %19 = fmul double %18, 0x3FEAA7C7112BD37B
  store double %19, double* %6, align 8
  %20 = load double, double* %7, align 8
  %21 = fmul double %20, 0x3FF33547EFE9D27E
  store double %21, double* %7, align 8
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %38, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 128
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 1, %26
  %28 = load double, double* %6, align 8
  %29 = call i32 @SET_SCF(i32 %27, double %28)
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 1, %30
  %32 = load double, double* %7, align 8
  %33 = call i32 @SET_SCF(i32 %31, double %32)
  %34 = load double, double* %6, align 8
  %35 = fmul double %34, 0x3FEAA7C7112BD37B
  store double %35, double* %6, align 8
  %36 = load double, double* %7, align 8
  %37 = fmul double %36, 0x3FF33547EFE9D27E
  store double %37, double* %7, align 8
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %22

41:                                               ; preds = %22
  ret void
}

declare dso_local i32 @SET_SCF(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
