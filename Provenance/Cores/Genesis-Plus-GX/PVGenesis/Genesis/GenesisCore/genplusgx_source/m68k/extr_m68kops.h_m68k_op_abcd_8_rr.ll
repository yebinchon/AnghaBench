; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_abcd_8_rr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_abcd_8_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DX = common dso_local global i32 0, align 4
@DY = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_abcd_8_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_abcd_8_rr() #0 {
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
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @LOW_NIBBLE(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @LOW_NIBBLE(i32 %10)
  %12 = add nsw i32 %9, %11
  %13 = call i32 (...) @XFLAG_AS_1()
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %15, -1
  store i32 %16, i32* @FLAG_V, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 9
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 6
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %0
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @HIGH_NIBBLE(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @HIGH_NIBBLE(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 153
  %34 = zext i1 %33 to i32
  %35 = shl i32 %34, 8
  store i32 %35, i32* @FLAG_C, align 4
  store i32 %35, i32* @FLAG_X, align 4
  %36 = load i32, i32* @FLAG_C, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 160
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %22
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @FLAG_V, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* @FLAG_V, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @NFLAG_8(i32 %45)
  store i32 %46, i32* @FLAG_N, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @MASK_OUT_ABOVE_8(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FLAG_Z, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @FLAG_Z, align 4
  %52 = load i32*, i32** %1, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MASK_OUT_BELOW_8(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %1, align 8
  store i32 %56, i32* %57, align 4
  ret void
}

declare dso_local i32 @LOW_NIBBLE(i32) #1

declare dso_local i32 @XFLAG_AS_1(...) #1

declare dso_local i64 @HIGH_NIBBLE(i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
