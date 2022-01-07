; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asl_8_s.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/m68k/extr_m68kops.h_m68k_op_asl_8_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@REG_IR = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@m68ki_shift_8_table = common dso_local global i32* null, align 8
@FLAG_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m68k_op_asl_8_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m68k_op_asl_8_s() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* @DY, i32** %1, align 8
  %5 = load i32, i32* @REG_IR, align 4
  %6 = ashr i32 %5, 9
  %7 = sub nsw i32 %6, 1
  %8 = and i32 %7, 7
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MASK_OUT_ABOVE_8(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = shl i32 %13, %14
  %16 = call i32 @MASK_OUT_ABOVE_8(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %0
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @CYC_SHIFT, align 4
  %22 = mul nsw i32 %20, %21
  %23 = call i32 @USE_CYCLES(i32 %22)
  br label %24

24:                                               ; preds = %19, %0
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MASK_OUT_BELOW_8(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %1, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %2, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* @FLAG_C, align 4
  store i32 %33, i32* @FLAG_X, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @NFLAG_8(i32 %34)
  store i32 %35, i32* @FLAG_N, align 4
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* @FLAG_Z, align 4
  %37 = load i32*, i32** @m68ki_shift_8_table, align 8
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %24
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** @m68ki_shift_8_table, align 8
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %2, align 4
  %58 = icmp slt i32 %57, 8
  br label %59

59:                                               ; preds = %56, %47
  %60 = phi i1 [ false, %47 ], [ %58, %56 ]
  br label %61

61:                                               ; preds = %59, %24
  %62 = phi i1 [ true, %24 ], [ %60, %59 ]
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = shl i32 %64, 7
  store i32 %65, i32* @FLAG_V, align 4
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_8(i32) #1

declare dso_local i32 @NFLAG_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
