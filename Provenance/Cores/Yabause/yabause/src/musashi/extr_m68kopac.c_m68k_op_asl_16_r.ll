; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_asl_16_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_asl_16_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@m68ki_shift_16_table = common dso_local global i32* null, align 8
@FLAG_V = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@ZFLAG_SET = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_asl_16_r() #0 {
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
  %9 = call i32 @MASK_OUT_ABOVE_16(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %10, %11
  %13 = call i32 @MASK_OUT_ABOVE_16(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @CYC_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @USE_CYCLES(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %61

23:                                               ; preds = %16
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MASK_OUT_BELOW_16(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %1, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = shl i32 %30, %31
  %33 = ashr i32 %32, 8
  store i32 %33, i32* @FLAG_C, align 4
  store i32 %33, i32* @FLAG_X, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @NFLAG_16(i32 %34)
  store i32 %35, i32* @FLAG_N, align 4
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* @FLAG_Z, align 4
  %37 = load i32*, i32** @m68ki_shift_16_table, align 8
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
  br i1 %46, label %56, label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %3, align 4
  %49 = load i32*, i32** @m68ki_shift_16_table, align 8
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %48, %54
  br label %56

56:                                               ; preds = %47, %23
  %57 = phi i1 [ true, %23 ], [ %55, %47 ]
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = shl i32 %59, 7
  store i32 %60, i32* @FLAG_V, align 4
  br label %87

61:                                               ; preds = %16
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, -65536
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %2, align 4
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 1
  br label %71

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32 [ %69, %67 ], [ 0, %70 ]
  %73 = shl i32 %72, 8
  store i32 %73, i32* @FLAG_C, align 4
  store i32 %73, i32* @FLAG_X, align 4
  %74 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %74, i32* @FLAG_N, align 4
  %75 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %75, i32* @FLAG_Z, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = shl i32 %79, 7
  store i32 %80, i32* @FLAG_V, align 4
  br label %87

81:                                               ; preds = %0
  %82 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %82, i32* @FLAG_C, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @NFLAG_16(i32 %83)
  store i32 %84, i32* @FLAG_N, align 4
  %85 = load i32, i32* %3, align 4
  store i32 %85, i32* @FLAG_Z, align 4
  %86 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %86, i32* @FLAG_V, align 4
  br label %87

87:                                               ; preds = %81, %71, %56
  ret void
}

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_16(i32) #1

declare dso_local i32 @NFLAG_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
