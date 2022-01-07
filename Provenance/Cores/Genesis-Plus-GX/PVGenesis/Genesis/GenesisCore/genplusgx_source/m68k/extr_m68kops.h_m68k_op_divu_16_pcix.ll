; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_divu_16_pcix.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_divu_16_pcix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@VFLAG_SET = common dso_local global i32 0, align 4
@NFLAG_SET = common dso_local global i32 0, align 4
@EXCEPTION_ZERO_DIVIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_divu_16_pcix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_divu_16_pcix() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DX, i32** %1, align 8
  %5 = call i32 (...) @OPER_PCIX_16()
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %0
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 65536
  br i1 %18, label %19, label %36

19:                                               ; preds = %8
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @UseDivuCycles(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* @FLAG_Z, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @NFLAG_16(i32 %25)
  store i32 %26, i32* @FLAG_N, align 4
  %27 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %27, i32* @FLAG_V, align 4
  %28 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %28, i32* @FLAG_C, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @MASK_OUT_ABOVE_16(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = call i32 @MASK_OUT_ABOVE_32(i32 %33)
  %35 = load i32*, i32** %1, align 8
  store i32 %34, i32* %35, align 4
  br label %45

36:                                               ; preds = %8
  %37 = call i32 @USE_CYCLES(i32 70)
  %38 = load i32, i32* @VFLAG_SET, align 4
  store i32 %38, i32* @FLAG_V, align 4
  %39 = load i32, i32* @NFLAG_SET, align 4
  store i32 %39, i32* @FLAG_N, align 4
  %40 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %40, i32* @FLAG_C, align 4
  br label %45

41:                                               ; preds = %0
  %42 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %42, i32* @FLAG_C, align 4
  %43 = load i32, i32* @EXCEPTION_ZERO_DIVIDE, align 4
  %44 = call i32 @m68ki_exception_trap(i32 %43)
  br label %45

45:                                               ; preds = %41, %36, %19
  ret void
}

declare dso_local i32 @OPER_PCIX_16(...) #1

declare dso_local i32 @UseDivuCycles(i32, i32) #1

declare dso_local i32 @NFLAG_16(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
