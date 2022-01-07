; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_lsl_16_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_lsl_16_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@XFLAG_CLEAR = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@ZFLAG_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_lsl_16_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_lsl_16_r() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %5 = load i32, i32* @DX, align 4
  %6 = and i32 %5, 63
  store i32 %6, i32* %2, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MASK_OUT_ABOVE_16(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %10, %11
  %13 = call i32 @MASK_OUT_ABOVE_16(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @CYC_SHIFT, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32 @USE_CYCLES(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp sle i32 %21, 16
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MASK_OUT_BELOW_16(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %1, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = shl i32 %30, %31
  %33 = ashr i32 %32, 8
  store i32 %33, i32* @FLAG_C, align 4
  store i32 %33, i32* @FLAG_X, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @NFLAG_16(i32 %34)
  store i32 %35, i32* @FLAG_N, align 4
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* @FLAG_Z, align 4
  %37 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %37, i32* @FLAG_V, align 4
  br label %53

38:                                               ; preds = %16
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, -65536
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @XFLAG_CLEAR, align 4
  store i32 %42, i32* @FLAG_X, align 4
  %43 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %43, i32* @FLAG_C, align 4
  %44 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %44, i32* @FLAG_N, align 4
  %45 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %45, i32* @FLAG_Z, align 4
  %46 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %46, i32* @FLAG_V, align 4
  br label %53

47:                                               ; preds = %0
  %48 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %48, i32* @FLAG_C, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @NFLAG_16(i32 %49)
  store i32 %50, i32* @FLAG_N, align 4
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* @FLAG_Z, align 4
  %52 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %52, i32* @FLAG_V, align 4
  br label %53

53:                                               ; preds = %47, %38, %23
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_16(i32) #1

declare dso_local i32 @NFLAG_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
