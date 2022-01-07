; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_sbcd_8_rr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_sbcd_8_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i32 0, align 4
@DY = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_SET = common dso_local global i64 0, align 8
@FLAG_C = common dso_local global i64 0, align 8
@FLAG_X = common dso_local global i64 0, align 8
@NFLAG_SET = common dso_local global i64 0, align 8
@FLAG_N = common dso_local global i64 0, align 8
@FLAG_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_sbcd_8_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_sbcd_8_rr() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DX, i32** %1, align 8
  %5 = load i32, i32* @DY, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @LOW_NIBBLE(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @LOW_NIBBLE(i32 %10)
  %12 = sub nsw i32 %9, %11
  %13 = call i32 (...) @XFLAG_AS_1()
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %15, i32* @FLAG_V, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 9
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 6
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @HIGH_NIBBLE(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @HIGH_NIBBLE(i32 %24)
  %26 = sub nsw i64 %23, %25
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 153
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 160
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* @CFLAG_SET, align 8
  store i64 %36, i64* @FLAG_C, align 8
  store i64 %36, i64* @FLAG_X, align 8
  %37 = load i64, i64* @NFLAG_SET, align 8
  store i64 %37, i64* @FLAG_N, align 8
  br label %39

38:                                               ; preds = %21
  store i64 0, i64* @FLAG_C, align 8
  store i64 0, i64* @FLAG_X, align 8
  store i64 0, i64* @FLAG_N, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @MASK_OUT_ABOVE_8(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @FLAG_Z, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @FLAG_Z, align 4
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MASK_OUT_BELOW_8(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %1, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

declare dso_local i32 @LOW_NIBBLE(i32) #1

declare dso_local i32 @XFLAG_AS_1(...) #1

declare dso_local i64 @HIGH_NIBBLE(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
