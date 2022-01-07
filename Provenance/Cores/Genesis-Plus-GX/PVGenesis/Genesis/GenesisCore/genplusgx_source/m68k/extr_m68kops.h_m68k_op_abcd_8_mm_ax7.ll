; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_abcd_8_mm_ax7.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_abcd_8_mm_ax7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAG_V = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_abcd_8_mm_ax7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_abcd_8_mm_ax7() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @OPER_AY_PD_8()
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @EA_A7_PD_8()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @m68ki_read_8(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @LOW_NIBBLE(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @LOW_NIBBLE(i32 %11)
  %13 = add nsw i32 %10, %12
  %14 = call i32 (...) @XFLAG_AS_1()
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  store i32 %17, i32* @FLAG_V, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 9
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 6
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %0
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @HIGH_NIBBLE(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @HIGH_NIBBLE(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 153
  %35 = zext i1 %34 to i32
  %36 = shl i32 %35, 8
  store i32 %36, i32* @FLAG_C, align 4
  store i32 %36, i32* @FLAG_X, align 4
  %37 = load i32, i32* @FLAG_C, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 160
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %23
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FLAG_V, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* @FLAG_V, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @NFLAG_8(i32 %46)
  store i32 %47, i32* @FLAG_N, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @MASK_OUT_ABOVE_8(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @FLAG_Z, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @FLAG_Z, align 4
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @m68ki_write_8(i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @OPER_AY_PD_8(...) #1

declare dso_local i32 @EA_A7_PD_8(...) #1

declare dso_local i32 @m68ki_read_8(i32) #1

declare dso_local i32 @LOW_NIBBLE(i32) #1

declare dso_local i32 @XFLAG_AS_1(...) #1

declare dso_local i64 @HIGH_NIBBLE(i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @m68ki_write_8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
