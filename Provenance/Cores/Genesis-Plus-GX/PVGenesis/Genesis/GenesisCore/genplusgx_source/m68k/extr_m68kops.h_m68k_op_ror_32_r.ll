; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_ror_32_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_ror_32_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_ror_32_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_ror_32_r() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %6 = load i32, i32* @DX, align 4
  %7 = and i32 %6, 63
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 31
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ROR_32(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @CYC_SHIFT, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @USE_CYCLES(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %1, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %26, 31
  %28 = ashr i32 %24, %27
  %29 = shl i32 %28, 8
  store i32 %29, i32* @FLAG_C, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @NFLAG_32(i32 %30)
  store i32 %31, i32* @FLAG_N, align 4
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* @FLAG_Z, align 4
  %33 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %33, i32* @FLAG_V, align 4
  br label %40

34:                                               ; preds = %0
  %35 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %35, i32* @FLAG_C, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @NFLAG_32(i32 %36)
  store i32 %37, i32* @FLAG_N, align 4
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* @FLAG_Z, align 4
  %39 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %39, i32* @FLAG_V, align 4
  br label %40

40:                                               ; preds = %34, %17
  ret void
}

declare dso_local i32 @ROR_32(i32, i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
