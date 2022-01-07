; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asr_8_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asr_8_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@m68ki_shift_8_table = common dso_local global i32* null, align 8
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_asr_8_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_asr_8_r() #0 {
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
  %9 = call i32 @MASK_OUT_ABOVE_8(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @CYC_SHIFT, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call i32 @USE_CYCLES(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @GET_MSB_8(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32*, i32** @m68ki_shift_8_table, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %22
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MASK_OUT_BELOW_8(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %37, %38
  %40 = load i32*, i32** %1, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %2, align 4
  %43 = sub nsw i32 9, %42
  %44 = shl i32 %41, %43
  store i32 %44, i32* @FLAG_C, align 4
  store i32 %44, i32* @FLAG_X, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @NFLAG_8(i32 %45)
  store i32 %46, i32* @FLAG_N, align 4
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* @FLAG_Z, align 4
  %48 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %48, i32* @FLAG_V, align 4
  br label %77

49:                                               ; preds = %15
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @GET_MSB_8(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32*, i32** %1, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 255
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @CFLAG_SET, align 4
  store i32 %57, i32* @FLAG_C, align 4
  %58 = load i32, i32* @XFLAG_SET, align 4
  store i32 %58, i32* @FLAG_X, align 4
  %59 = load i32, i32* @NFLAG_SET, align 4
  store i32 %59, i32* @FLAG_N, align 4
  %60 = load i32, i32* @ZFLAG_CLEAR, align 4
  store i32 %60, i32* @FLAG_Z, align 4
  %61 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %61, i32* @FLAG_V, align 4
  br label %77

62:                                               ; preds = %49
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -256
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %66, i32* @FLAG_C, align 4
  %67 = load i32, i32* @XFLAG_CLEAR, align 4
  store i32 %67, i32* @FLAG_X, align 4
  %68 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %68, i32* @FLAG_N, align 4
  %69 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %69, i32* @FLAG_Z, align 4
  %70 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %70, i32* @FLAG_V, align 4
  br label %77

71:                                               ; preds = %0
  %72 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %72, i32* @FLAG_C, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @NFLAG_8(i32 %73)
  store i32 %74, i32* @FLAG_N, align 4
  %75 = load i32, i32* %3, align 4
  store i32 %75, i32* @FLAG_Z, align 4
  %76 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %76, i32* @FLAG_V, align 4
  br label %77

77:                                               ; preds = %71, %62, %53, %34
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i64 @GET_MSB_8(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_8(i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
