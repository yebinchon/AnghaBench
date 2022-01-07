; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asl_32_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asl_32_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@m68ki_shift_32_table = common dso_local global i32* null, align 8
@FLAG_V = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@ZFLAG_SET = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_asl_32_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_asl_32_r() #0 {
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
  %11 = shl i32 %9, %10
  %12 = call i32 @MASK_OUT_ABOVE_32(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @CYC_SHIFT, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call i32 @USE_CYCLES(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %57

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** %1, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 32, %26
  %28 = ashr i32 %25, %27
  %29 = shl i32 %28, 8
  store i32 %29, i32* @FLAG_C, align 4
  store i32 %29, i32* @FLAG_X, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @NFLAG_32(i32 %30)
  store i32 %31, i32* @FLAG_N, align 4
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* @FLAG_Z, align 4
  %33 = load i32*, i32** @m68ki_shift_32_table, align 8
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %3, align 4
  %45 = load i32*, i32** @m68ki_shift_32_table, align 8
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %44, %50
  br label %52

52:                                               ; preds = %43, %22
  %53 = phi i1 [ true, %22 ], [ %51, %43 ]
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = shl i32 %55, 7
  store i32 %56, i32* @FLAG_V, align 4
  br label %81

57:                                               ; preds = %15
  %58 = load i32*, i32** %1, align 8
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 1
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 0, %64 ]
  %67 = shl i32 %66, 8
  store i32 %67, i32* @FLAG_C, align 4
  store i32 %67, i32* @FLAG_X, align 4
  %68 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %68, i32* @FLAG_N, align 4
  %69 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %69, i32* @FLAG_Z, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = shl i32 %73, 7
  store i32 %74, i32* @FLAG_V, align 4
  br label %81

75:                                               ; preds = %0
  %76 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %76, i32* @FLAG_C, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @NFLAG_32(i32 %77)
  store i32 %78, i32* @FLAG_N, align 4
  %79 = load i32, i32* %3, align 4
  store i32 %79, i32* @FLAG_Z, align 4
  %80 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %80, i32* @FLAG_V, align 4
  br label %81

81:                                               ; preds = %75, %65, %52
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
