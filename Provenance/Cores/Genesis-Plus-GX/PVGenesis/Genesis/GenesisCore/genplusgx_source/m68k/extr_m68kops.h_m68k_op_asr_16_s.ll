; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asr_16_s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asr_16_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i64 0, align 8
@REG_IR = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i64 0, align 8
@m68ki_shift_16_table = common dso_local global i64* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i64 0, align 8
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i64 0, align 8
@FLAG_X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_asr_16_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_asr_16_s() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64* @DY, i64** %1, align 8
  %5 = load i32, i32* @REG_IR, align 4
  %6 = ashr i32 %5, 9
  %7 = sub nsw i32 %6, 1
  %8 = and i32 %7, 7
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = load i64*, i64** %1, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @MASK_OUT_ABOVE_16(i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* %2, align 8
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %0
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @CYC_SHIFT, align 8
  %22 = mul i64 %20, %21
  %23 = call i32 @USE_CYCLES(i64 %22)
  br label %24

24:                                               ; preds = %19, %0
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @GET_MSB_16(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64*, i64** @m68ki_shift_16_table, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i64*, i64** %1, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @MASK_OUT_BELOW_16(i64 %37)
  %39 = load i64, i64* %4, align 8
  %40 = or i64 %38, %39
  %41 = load i64*, i64** %1, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @NFLAG_16(i64 %42)
  store i32 %43, i32* @FLAG_N, align 4
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* @FLAG_Z, align 8
  %45 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %45, i32* @FLAG_V, align 4
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %2, align 8
  %48 = sub i64 9, %47
  %49 = shl i64 %46, %48
  store i64 %49, i64* @FLAG_C, align 8
  store i64 %49, i64* @FLAG_X, align 8
  ret void
}

declare dso_local i64 @MASK_OUT_ABOVE_16(i64) #1

declare dso_local i32 @USE_CYCLES(i64) #1

declare dso_local i64 @GET_MSB_16(i64) #1

declare dso_local i64 @MASK_OUT_BELOW_16(i64) #1

declare dso_local i32 @NFLAG_16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
