; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_ror_8_s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_ror_8_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@REG_IR = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_ror_8_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_ror_8_s() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %6 = load i32, i32* @REG_IR, align 4
  %7 = ashr i32 %6, 9
  %8 = sub nsw i32 %7, 1
  %9 = and i32 %8, 7
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 7
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MASK_OUT_ABOVE_8(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ROR_8(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @CYC_SHIFT, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call i32 @USE_CYCLES(i32 %24)
  br label %26

26:                                               ; preds = %21, %0
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MASK_OUT_BELOW_8(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %1, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @NFLAG_8(i32 %33)
  store i32 %34, i32* @FLAG_N, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* @FLAG_Z, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sub nsw i32 9, %37
  %39 = shl i32 %36, %38
  store i32 %39, i32* @FLAG_C, align 4
  %40 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %40, i32* @FLAG_V, align 4
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @ROR_8(i32, i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_8(i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
