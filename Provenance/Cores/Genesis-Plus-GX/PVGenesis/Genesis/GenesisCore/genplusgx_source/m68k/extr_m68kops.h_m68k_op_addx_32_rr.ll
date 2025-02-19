; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_addx_32_rr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_addx_32_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i64 0, align 8
@DY = common dso_local global i64 0, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_addx_32_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_addx_32_rr() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64* @DX, i64** %1, align 8
  %5 = load i64, i64* @DY, align 8
  store i64 %5, i64* %2, align 8
  %6 = load i64*, i64** %1, align 8
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 (...) @XFLAG_AS_1()
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @NFLAG_32(i64 %13)
  store i32 %14, i32* @FLAG_N, align 4
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @VFLAG_ADD_32(i64 %15, i64 %16, i64 %17)
  store i32 %18, i32* @FLAG_V, align 4
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @CFLAG_ADD_32(i64 %19, i64 %20, i64 %21)
  store i32 %22, i32* @FLAG_C, align 4
  store i32 %22, i32* @FLAG_X, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @MASK_OUT_ABOVE_32(i64 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @FLAG_Z, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* @FLAG_Z, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64*, i64** %1, align 8
  store i64 %28, i64* %29, align 8
  ret void
}

declare dso_local i64 @XFLAG_AS_1(...) #1

declare dso_local i32 @NFLAG_32(i64) #1

declare dso_local i32 @VFLAG_ADD_32(i64, i64, i64) #1

declare dso_local i32 @CFLAG_ADD_32(i64, i64, i64) #1

declare dso_local i64 @MASK_OUT_ABOVE_32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
