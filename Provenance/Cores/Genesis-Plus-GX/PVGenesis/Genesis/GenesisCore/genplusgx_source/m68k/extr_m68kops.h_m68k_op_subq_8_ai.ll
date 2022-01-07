; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_subq_8_ai.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_subq_8_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_IR = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_subq_8_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_subq_8_ai() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @REG_IR, align 4
  %6 = ashr i32 %5, 9
  %7 = sub nsw i32 %6, 1
  %8 = and i32 %7, 7
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = call i32 (...) @EA_AY_AI_8()
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @m68ki_read_8(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @NFLAG_8(i32 %16)
  store i32 %17, i32* @FLAG_N, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @MASK_OUT_ABOVE_8(i32 %18)
  store i32 %19, i32* @FLAG_Z, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @CFLAG_8(i32 %20)
  store i32 %21, i32* @FLAG_C, align 4
  store i32 %21, i32* @FLAG_X, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @VFLAG_SUB_8(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* @FLAG_V, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @FLAG_Z, align 4
  %28 = call i32 @m68ki_write_8(i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @EA_AY_AI_8(...) #1

declare dso_local i32 @m68ki_read_8(i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @CFLAG_8(i32) #1

declare dso_local i32 @VFLAG_SUB_8(i32, i32, i32) #1

declare dso_local i32 @m68ki_write_8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
