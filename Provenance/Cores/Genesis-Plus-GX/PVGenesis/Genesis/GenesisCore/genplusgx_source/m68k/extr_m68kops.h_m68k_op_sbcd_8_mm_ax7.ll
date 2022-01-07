; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_sbcd_8_mm_ax7.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_sbcd_8_mm_ax7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_SET = common dso_local global i64 0, align 8
@FLAG_C = common dso_local global i64 0, align 8
@FLAG_X = common dso_local global i64 0, align 8
@NFLAG_SET = common dso_local global i64 0, align 8
@FLAG_N = common dso_local global i64 0, align 8
@FLAG_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_sbcd_8_mm_ax7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_sbcd_8_mm_ax7() #0 {
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
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @LOW_NIBBLE(i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @LOW_NIBBLE(i32 %11)
  %13 = sub nsw i32 %10, %12
  %14 = call i32 (...) @XFLAG_AS_1()
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %16, i32* @FLAG_V, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 9
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, 6
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %0
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @HIGH_NIBBLE(i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i64 @HIGH_NIBBLE(i32 %25)
  %27 = sub nsw i64 %24, %26
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 153
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 160
  store i32 %36, i32* %4, align 4
  %37 = load i64, i64* @CFLAG_SET, align 8
  store i64 %37, i64* @FLAG_C, align 8
  store i64 %37, i64* @FLAG_X, align 8
  %38 = load i64, i64* @NFLAG_SET, align 8
  store i64 %38, i64* @FLAG_N, align 8
  br label %40

39:                                               ; preds = %22
  store i64 0, i64* @FLAG_C, align 8
  store i64 0, i64* @FLAG_X, align 8
  store i64 0, i64* @FLAG_N, align 8
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @MASK_OUT_ABOVE_8(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @FLAG_Z, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @FLAG_Z, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @m68ki_write_8(i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @OPER_AY_PD_8(...) #1

declare dso_local i32 @EA_A7_PD_8(...) #1

declare dso_local i32 @m68ki_read_8(i32) #1

declare dso_local i32 @LOW_NIBBLE(i32) #1

declare dso_local i32 @XFLAG_AS_1(...) #1

declare dso_local i64 @HIGH_NIBBLE(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @m68ki_write_8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
