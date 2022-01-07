; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_roxr_32_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_roxr_32_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_roxr_32_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_roxr_32_r() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %7 = load i32, i32* @DX, align 4
  %8 = and i32 %7, 63
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %9, 33
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ROR_33(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 32, %16
  %18 = shl i32 1, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = call i32 (...) @XFLAG_AS_1()
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 32, %22
  %24 = shl i32 %21, %23
  %25 = or i32 %20, %24
  %26 = call i32 @MASK_OUT_ABOVE_32(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %0
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @CYC_SHIFT, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i32 @USE_CYCLES(i32 %37)
  br label %39

39:                                               ; preds = %34, %0
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %1, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = shl i32 %47, 8
  store i32 %48, i32* @FLAG_X, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* @FLAG_X, align 4
  store i32 %52, i32* @FLAG_C, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @NFLAG_32(i32 %53)
  store i32 %54, i32* @FLAG_N, align 4
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* @FLAG_Z, align 4
  %56 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %56, i32* @FLAG_V, align 4
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @ROR_33(i32, i32) #1

declare dso_local i32 @XFLAG_AS_1(...) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
