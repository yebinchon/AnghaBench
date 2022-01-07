; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_lsr_8_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_lsr_8_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DY = common dso_local global i32 0, align 4
@DX = common dso_local global i32 0, align 4
@CYC_SHIFT = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_X = common dso_local global i32 0, align 4
@NFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@XFLAG_CLEAR = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@ZFLAG_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_lsr_8_r() #0 {
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
  br i1 %14, label %15, label %45

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @CYC_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = call i32 @USE_CYCLES(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp sle i32 %20, 8
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MASK_OUT_BELOW_8(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %1, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sub nsw i32 9, %30
  %32 = shl i32 %29, %31
  store i32 %32, i32* @FLAG_C, align 4
  store i32 %32, i32* @FLAG_X, align 4
  %33 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %33, i32* @FLAG_N, align 4
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* @FLAG_Z, align 4
  %35 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %35, i32* @FLAG_V, align 4
  br label %51

36:                                               ; preds = %15
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, -256
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @XFLAG_CLEAR, align 4
  store i32 %40, i32* @FLAG_X, align 4
  %41 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %41, i32* @FLAG_C, align 4
  %42 = load i32, i32* @NFLAG_CLEAR, align 4
  store i32 %42, i32* @FLAG_N, align 4
  %43 = load i32, i32* @ZFLAG_SET, align 4
  store i32 %43, i32* @FLAG_Z, align 4
  %44 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %44, i32* @FLAG_V, align 4
  br label %51

45:                                               ; preds = %0
  %46 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %46, i32* @FLAG_C, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @NFLAG_8(i32 %47)
  store i32 %48, i32* @FLAG_N, align 4
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* @FLAG_Z, align 4
  %50 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %50, i32* @FLAG_V, align 4
  br label %51

51:                                               ; preds = %45, %36, %22
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
