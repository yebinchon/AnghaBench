; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asr_32_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asr_32_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@m68ki_shift_32_table = common dso_local global i32* null, align 8
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_SET = common dso_local global i32 0, align 4
@XFLAG_SET = common dso_local global i32 0, align 4
@NFLAG_SET = common dso_local global i32 0, align 4
@ZFLAG_CLEAR = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@XFLAG_CLEAR = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@ZFLAG_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_asr_32_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_asr_32_r() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %5 = load i32, i32* @DX, align 4
  %6 = and i32 %5, 63
  store i32 %6, i32* %2, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @CYC_SHIFT, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @USE_CYCLES(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %45

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @GET_MSB_32(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32*, i32** @m68ki_shift_32_table, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** %1, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sub nsw i32 %37, 1
  %39 = ashr i32 %36, %38
  %40 = shl i32 %39, 8
  store i32 %40, i32* @FLAG_X, align 4
  store i32 %40, i32* @FLAG_C, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @NFLAG_32(i32 %41)
  store i32 %42, i32* @FLAG_N, align 4
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* @FLAG_Z, align 4
  %44 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %44, i32* @FLAG_V, align 4
  br label %69

45:                                               ; preds = %14
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @GET_MSB_32(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %1, align 8
  store i32 -1, i32* %50, align 4
  %51 = load i32, i32* @CFLAG_SET, align 4
  store i32 %51, i32* @FLAG_C, align 4
  %52 = load i32, i32* @XFLAG_SET, align 4
  store i32 %52, i32* @FLAG_X, align 4
  %53 = load i32, i32* @NFLAG_SET, align 4
  store i32 %53, i32* @FLAG_N, align 4
  %54 = load i32, i32* @ZFLAG_CLEAR, align 4
  store i32 %54, i32* @FLAG_Z, align 4
  %55 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %55, i32* @FLAG_V, align 4
  br label %69

56:                                               ; preds = %45
  %57 = load i32*, i32** %1, align 8
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %58, i32* @FLAG_C, align 4
  %59 = load i32, i32* @XFLAG_CLEAR, align 4
  store i32 %59, i32* @FLAG_X, align 4
  %60 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %60, i32* @FLAG_N, align 4
  %61 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %61, i32* @FLAG_Z, align 4
  %62 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %62, i32* @FLAG_V, align 4
  br label %69

63:                                               ; preds = %0
  %64 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %64, i32* @FLAG_C, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @NFLAG_32(i32 %65)
  store i32 %66, i32* @FLAG_N, align 4
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* @FLAG_Z, align 4
  %68 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %68, i32* @FLAG_V, align 4
  br label %69

69:                                               ; preds = %63, %56, %49, %33
  ret void
}

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i64 @GET_MSB_32(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
