; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_divs_16_pcdi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_divs_16_pcdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i64 0, align 8
@FLAG_Z = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@VFLAG_SET = common dso_local global i32 0, align 4
@NFLAG_SET = common dso_local global i32 0, align 4
@EXCEPTION_ZERO_DIVIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_divs_16_pcdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_divs_16_pcdi() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64* @DX, i64** %1, align 8
  %5 = call i32 (...) @OPER_PCDI_16()
  %6 = call i32 @MAKE_INT_16(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %0
  %10 = load i64*, i64** %1, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @UseDivsCycles(i64 %11, i32 %12)
  %14 = load i64*, i64** %1, align 8
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, -2147483648
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  store i32 0, i32* @FLAG_Z, align 4
  %22 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %22, i32* @FLAG_N, align 4
  %23 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %23, i32* @FLAG_V, align 4
  %24 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %24, i32* @FLAG_C, align 4
  %25 = load i64*, i64** %1, align 8
  store i64 0, i64* %25, align 8
  br label %62

26:                                               ; preds = %18, %9
  %27 = load i64*, i64** %1, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @MAKE_INT_32(i64 %28)
  %30 = load i32, i32* %2, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load i64*, i64** %1, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @MAKE_INT_32(i64 %33)
  %35 = load i32, i32* %2, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @MAKE_INT_16(i32 %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %26
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* @FLAG_Z, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @NFLAG_16(i32 %43)
  store i32 %44, i32* @FLAG_N, align 4
  %45 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %45, i32* @FLAG_V, align 4
  %46 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %46, i32* @FLAG_C, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @MASK_OUT_ABOVE_16(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 %48, %50
  %52 = call i64 @MASK_OUT_ABOVE_32(i32 %51)
  %53 = load i64*, i64** %1, align 8
  store i64 %52, i64* %53, align 8
  br label %62

54:                                               ; preds = %26
  %55 = load i32, i32* @VFLAG_SET, align 4
  store i32 %55, i32* @FLAG_V, align 4
  %56 = load i32, i32* @NFLAG_SET, align 4
  store i32 %56, i32* @FLAG_N, align 4
  %57 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %57, i32* @FLAG_C, align 4
  br label %62

58:                                               ; preds = %0
  %59 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %59, i32* @FLAG_C, align 4
  %60 = load i32, i32* @EXCEPTION_ZERO_DIVIDE, align 4
  %61 = call i32 @m68ki_exception_trap(i32 %60)
  br label %62

62:                                               ; preds = %58, %54, %41, %21
  ret void
}

declare dso_local i32 @MAKE_INT_16(i32) #1

declare dso_local i32 @OPER_PCDI_16(...) #1

declare dso_local i32 @UseDivsCycles(i64, i32) #1

declare dso_local i32 @MAKE_INT_32(i64) #1

declare dso_local i32 @NFLAG_16(i32) #1

declare dso_local i64 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
