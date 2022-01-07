; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_asl_8_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_asl_8_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@m68ki_shift_8_table = common dso_local global i32* null, align 8
@FLAG_V = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@ZFLAG_SET = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_asl_8_r() #0 {
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
  %12 = shl i32 %10, %11
  %13 = call i32 @MASK_OUT_ABOVE_8(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @CYC_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @USE_CYCLES(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %60

23:                                               ; preds = %16
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MASK_OUT_BELOW_8(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %1, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* @FLAG_C, align 4
  store i32 %32, i32* @FLAG_X, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @NFLAG_8(i32 %33)
  store i32 %34, i32* @FLAG_N, align 4
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* @FLAG_Z, align 4
  %36 = load i32*, i32** @m68ki_shift_8_table, align 8
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %23
  %47 = load i32, i32* %3, align 4
  %48 = load i32*, i32** @m68ki_shift_8_table, align 8
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %47, %53
  br label %55

55:                                               ; preds = %46, %23
  %56 = phi i1 [ true, %23 ], [ %54, %46 ]
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = shl i32 %58, 7
  store i32 %59, i32* @FLAG_V, align 4
  br label %86

60:                                               ; preds = %16
  %61 = load i32*, i32** %1, align 8
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -256
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %2, align 4
  %65 = icmp eq i32 %64, 8
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, 1
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  %72 = shl i32 %71, 8
  store i32 %72, i32* @FLAG_C, align 4
  store i32 %72, i32* @FLAG_X, align 4
  %73 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %73, i32* @FLAG_N, align 4
  %74 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %74, i32* @FLAG_Z, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp eq i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = shl i32 %78, 7
  store i32 %79, i32* @FLAG_V, align 4
  br label %86

80:                                               ; preds = %0
  %81 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %81, i32* @FLAG_C, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @NFLAG_8(i32 %82)
  store i32 %83, i32* @FLAG_N, align 4
  %84 = load i32, i32* %3, align 4
  store i32 %84, i32* @FLAG_Z, align 4
  %85 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %85, i32* @FLAG_V, align 4
  br label %86

86:                                               ; preds = %80, %70, %55
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
